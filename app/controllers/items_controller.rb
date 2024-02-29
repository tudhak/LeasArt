class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def my_items
    @my_items = current_user.items
  end

  def index
    @items = Item.all
    additems = Item.all
    catitems = Item.all
    artitems = Item.all
    tititems = Item.all
    @category = Item::CATEGORY_NAME

    if params[:query].present?
      sql_subquery = "title ILIKE :query
      OR artist ILIKE :query
      OR address ILIKE :query"
      @items = @items.where(sql_subquery, query: "%#{params[:query]}%")

    elsif params[:address].present? || params[:category].present? || params[:artist].present? || params[:title].present?
      (if params[:address].present?
         addquery = "address ILIKE :address"
         additems = @items.where(addquery, address: "%#{params[:address]}%")
       end
       if params[:category].present?
         catquery = "category ILIKE :category"
         catitems = @items.where(catquery, category: "%#{params[:category]}%")
         @default = [params[:category]]
       end
       if params[:artist].present?
         artquery = "artist ILIKE :artist"
         artitems = @items.where(artquery, artist: "%#{params[:artist]}%")
       end
       if params[:title].present?
         titquery = "title ILIKE :title"
         tititems = @items.where(titquery, title: "%#{params[:title]}%")
       end)
      @items = additems & catitems & artitems & tititems

    else
      @items
    end

    @markers = @items.map do |item|
      {
        lat: item.latitude,
        lng: item.longitude,
        map_info_html: render_to_string(partial: "map_info", locals: {item: item}),
        id: item.id
      }
    end
  end

  def show
    @item = Item.find(params[:id])
    @booking = Booking.new
  end

  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.build(item_params)

    if @item.save
      redirect_to item_path(@item), notice: 'Item was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to @item, notice: 'Item was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path, notice: 'Item was successfully destroyed.'
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:title, :description, :price, :category, :artist, :address, photos: [])
  end

end

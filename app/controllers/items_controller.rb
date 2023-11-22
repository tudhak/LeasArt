class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :index]
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def my_items
    @my_items = current_user.items
  end

  def index
    if params[:category].present?
      @category = params[:category].capitalize
      @items = Item.where(category: @category)
    else
      @items = Item.all
    end
  end

  def show
    @item = Item.find(params[:id])
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

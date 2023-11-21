class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :index]
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
    # utiliser la méthode current_user pour afficher les items d'un propriétaire
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
      redirect_to list_path(@item), notice: 'Item was successfully created.'
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
    redirect_to items_url, notice: 'Item was successfully destroyed.'
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:title, :description, :price, :category, :artist, :address)
  end

end

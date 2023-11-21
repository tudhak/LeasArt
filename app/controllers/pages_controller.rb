class PagesController < ApplicationController

  # skip_before_action :authenticate_user!, only: :home

  def home
    @categories = ["Tableaux", "Sculptures", "Vases"]
    # @items = Item.all
    @search = Item.new
  end

end

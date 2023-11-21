class PagesController < ApplicationController

  # skip_before_action :authenticate_user!, only: :home

  def home
    @categories = Item::CATEGORY
  end

end

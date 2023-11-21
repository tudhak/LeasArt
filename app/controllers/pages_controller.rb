class PagesController < ApplicationController

  # skip_before_action :authenticate_user!, only: :home

  def home
    @categories = ["tableau", "sculpture", "decoration"]
  end

end

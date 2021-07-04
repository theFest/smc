class HomeController < ApplicationController
  def index
  end

  def about
  end

  def top10
  end

  def mostcolleted
  end

  def personalwishlist
  end

  def search
    @movies=Movie.where("title LIKE ?", "%" + "params[:q]" + "%")
  end

end

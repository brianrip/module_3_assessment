class SearchController < ApplicationController
  def index
    @station = Location.find_all(params[:])
  end
end

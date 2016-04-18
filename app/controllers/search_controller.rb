class SearchController < ApplicationController
  def index
    @station = Station.find_all(params[:])
  end
end

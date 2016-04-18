class WelcomeController < ApplicationController
  def index
    @stations = location.all
  end

private

  def location
    @location ||= LocationService.new
  end

end

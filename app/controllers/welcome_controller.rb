class WelcomeController < ApplicationController
  def index
    @stations = station.all
  end

private

  def station
    @station ||= StationService.new(token)
  end

end

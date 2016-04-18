class Station < OpenStruct

  def self.data(station_info)
    station = Station.new
    station.name          = station_info.name
    station.address       = station_info.address
    station.fuel_types    = station_info.fuel_types
    station.distance      = station_info.distance
    station.access_times  = station_info.access_times
  end

end

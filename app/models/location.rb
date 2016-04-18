class Location < OpenStruct

  def self.data(location_info)
    station = Location.new
    station.name          = location_info.name
    station.address       = location_info.address
    station.fuel_types    = location_info.fuel_types
    station.distance      = location_info.distance
    station.access_times  = location_info.access_times
  end

end

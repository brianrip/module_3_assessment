require 'rails_helper'

describe StationServices do
  context '#stations' do
    it 'returns stations' do
      VCR.use_cassette 'station_service#stations' do
        service = StationServices.new()
        stations = service.station(name: "")
        activity = station.first
        expect(station[:name]).to eq()
        expect(station.count).to eq()
      end
    end
  end
end

describe LocationService do
  context '#locations' do
    it 'returns locations' do
      VCR.use_cassette 'location_service#locations' do
        service = LocationService.new
        locations = service.location(name: "")
        activity = location.first
        expect(location[:name]).to eq()
        expect(location.count).to eq()
      end
    end
  end
end

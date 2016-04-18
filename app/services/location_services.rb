class LocationServices
  attr_reader :connection

  def initialize(api_key)
    @connection = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1/search")
    @connection.headers = { "X-Api-Key" => "oHgJhlKb7Ju4IgOkmxWXI1b1zUQu6Q0c3gfgeDVD" }
  end

  def by_zipcode(zip)
    connection.get(zip)
  end

end
# @connection = Faraday.new(url: "https://www.strava.com/api/v3")
# @connection.headers = { "Authorization" => "Bearer #{token}" }
# As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search?zip=80203"
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times

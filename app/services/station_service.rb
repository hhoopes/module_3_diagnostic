class StationService
  attr_reader :connection

  def initialize
    @connection = Faraday.new("http://developer.nrel.gov/api/alt-fuel-stations/v1/nearest")
    connection.params["api_key"] = ENV["api_key"]
  end

  def distance_search(zip, distance)
    connection.params["location"] = zip
    connection.params["distance"] = distance
    response = connection.get
    JSON.parse(response.body, symbolize_names: true)
  end


end

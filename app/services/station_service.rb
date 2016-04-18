class StationService
  attr_reader :connection

  def initialize
    @connection = Faraday.new("http://nrel.gov/api")
    connection.params["api_key"] = ENV["api_key"]
  end

  def distance_search(zip, distance)
    connection.params["zip_code"] = zip
    connection.params["distance"] = distance
    response = connection.get("/alt-fuel-stations/v1/nearest")
    JSON.parse(response.body)
  end


end

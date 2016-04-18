class StationService
  attr_reader :connection 

  def initialize
    @connection = Faraday.new("http://nrel.gov/api/alt-fuel-stations/v1/nearest")
    connection.params["api_key"] = ENV["api_key"]
  end
end

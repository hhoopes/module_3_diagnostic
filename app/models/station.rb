class Station
  def initialize(zip)
    @zip = zip
  end

  def default_distance_search
    service = StationService.new
    service.distance_search(location: @zip, radius: 6)

  end
end

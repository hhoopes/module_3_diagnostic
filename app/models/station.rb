class Station
  # def initialize(zip)
  #   @zip = zip
  # end

  def self.default_distance_search(zip)
    service = StationService.new
    service.distance_search(location: zip, radius: 6)

  end
end

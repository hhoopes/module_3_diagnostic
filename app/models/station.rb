class Station
  def initialize(zip)
    @zip = zip
  end

  def default_distance_search
    service = StationService.new(@zip)
    

  end
end

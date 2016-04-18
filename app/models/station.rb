class Station
  def initialize(zip)
    @zip = zip
    @service = StationService.new
end

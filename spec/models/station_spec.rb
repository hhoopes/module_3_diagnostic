require 'rails_helper'

describe StationService do
  context "mile range" do
    it "returns 10 stations within 6 miles" do
      VCR.use_cassette("stations by distance") do
        station = StationService.new
        results = station.distance_search("80203", 6)
        expect(station.count).to eq(10)


      end
    end
  end
end

require 'rails_helper'

describe StationService do
  context "mile range" do
    it "returns 10 stations within 6 miles" do
      VCR.use_cassette("stations by distance") do
        station = StationService.new
        

      end
    end
  end
end

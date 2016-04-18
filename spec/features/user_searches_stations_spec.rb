require 'rails_helper'

RSpec.feature "search", :type => :feature do
  scenario"user searches from index" do
    visit '/'

    find(".form-control").set("80203")
    click_button "Locate"

    expect(current_page).to eq("/search?zip=80203")
    within ".results" do

    end
  end
end

# As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search?zip=80203"
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times

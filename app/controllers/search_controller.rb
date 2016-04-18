class SearchController < ApplicationController
  def index
    @stations = Station.default_distance_search(params["q"])
  end
end

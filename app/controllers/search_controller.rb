class SearchController < ApplicationController
  def index
    @stations = Station.new(params["q"]).default_distance_search
  end
end

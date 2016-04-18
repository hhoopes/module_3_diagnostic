class SearchController < ApplicationController
  def index
    @stations = Station.new(params["q"])
  end
end

class SearchController < ApplicationController
  def index
    house = params[:house]
    search_facade = SearchFacade.new(house)
    @members = search_facade.search_members
  end
end

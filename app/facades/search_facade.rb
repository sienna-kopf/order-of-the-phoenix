class SearchFacade
  attr_reader :house

  def initialize(house)
    @house = house
    @harry_potter_service = HarryPotterService.new
  end

  def search_members
    members_info = results_search_members

    @members = members_info.map do |member_info|
      Member.new(member_info)
    end
  end

  def results_search_members
    @harry_potter_service.search_members(@house)
  end
end

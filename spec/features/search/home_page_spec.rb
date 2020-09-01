require 'rails_helper'

RSpec.describe "from the home page" do
  describe "a user selects a house and searches for members" do
    it "returns members of the order of the Phoenix of that house" do
      visit "/"

      find(:house).find("Gryffindor").select_option

      click_on 'Search for Members'

      expect(current_path).to eq("/search")

      expect(page).to have_css(".member", count: 21)

      within (first(".member")) do
        expect(page).to have_css(".name")
        expect(page).to have_css(".role")
        expect(page).to have_css(".house")
        expect(page).to have_css(".Patronus")
      end
# And for each of the members I should see:
# - The name of the member
# - The members role (if it exists)
# - The house the member belongs to
# - The Patronus of the member (if it exists)
    end
  end
end

require 'rails_helper'

RSpec.describe "from the home page" do
  describe "a user selects a house and searches for members" do
    it "returns members of the order of the Phoenix of that house" do
      visit "/"

      # find(:house).find("Gryffindor").select_option
      # default is gryffindor

      click_on 'Search For Members'

      expect(current_path).to eq("/search")

      expect(page).to have_css(".member", count: 21)

      within (first(".member")) do
        expect(page).to have_css(".name")
        name = find('.name').text
        expect(name).not_to be_empty

        expect(page).to have_css(".house")
        house = find('.house').text
        expect(house).not_to be_empty
      end

      within (page.all(".member")[1]) do
        expect(page).to have_css(".name")
        name = find('.name').text
        expect(name).not_to be_empty

        expect(page).to have_css(".role")
        role = find('.role').text
        expect(role).not_to be_empty

        expect(page).to have_css(".house")
        house = find('.house').text
        expect(house).not_to be_empty

        expect(page).to have_css(".patronus")
        patronus = find('.patronus').text
        expect(patronus).not_to be_empty
      end

  # And for each of the members I should see:
  # - The name of the member
  # - The members role (if it exists)
  # - The house the member belongs to
  # - The Patronus of the member (if it exists)
    end
  end
end

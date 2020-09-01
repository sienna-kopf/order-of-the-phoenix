require 'rails_helper'

describe HarryPotterService do
  context 'instance methods' do
    context '#search_members' do
      it "retruns members who are in the Order of the Phoenix" do
        service = HarryPotterService.new
        query = service.search_members("Gryffindor")
        expect(query).to be_a Array
        expect(query[0]).to be_an Hash
        member_data = query[-1]
        expect(member_data).to have_key :name
        expect(member_data).to have_key :role
        expect(member_data).to have_key :house
        expect(member_data).to have_key :patronus
      end
    end
  end
end

require 'rails_helper'

describe HarryPotterService do
  context 'instance methods' do
    context '#gryffindor' do
      it "retruns members who are in the Order of the Phoenix" do
        VCR.use_cassette('gryffindor') do
          service = HarryPotterService.new
          query = service.gryffindor
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

    context '#hufflepuff' do
      it "retruns members who are in the Order of the Phoenix" do
        VCR.use_cassette('hufflepuff') do
          service = HarryPotterService.new
          query = service.hufflepuff
          expect(query).to be_a Array
          expect(query[0]).to be_an Hash
          member_data = query[2]
          expect(member_data).to have_key :name
          expect(member_data).to have_key :role
          expect(member_data).to have_key :house
          expect(member_data).to have_key :patronus
        end
      end
    end

    context '#ravenclaw' do
      it "retruns members who are in the Order of the Phoenix" do
        VCR.use_cassette('ravenclaw') do
          service = HarryPotterService.new
          query = service.ravenclaw
          expect(query).to be_a Array
          # expect(query[0]).to be_an Hash
          # member_data = query[-1]
          # expect(member_data).to have_key :name
          # expect(member_data).to have_key :role
          # expect(member_data).to have_key :house
          # expect(member_data).to have_key :patronus
        end
      end
    end

    context '#slytherin' do
      it "retruns members who are in the Order of the Phoenix" do
        VCR.use_cassette('slytherin') do
          service = HarryPotterService.new
          query = service.slytherin
          expect(query).to be_a Array
          expect(query[0]).to be_an Hash
          member_data = query[0]
          expect(member_data).to have_key :name
          expect(member_data).to have_key :role
          expect(member_data).to have_key :house
          expect(member_data).to have_key :patronus
        end
      end
    end
  end
end

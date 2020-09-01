require 'rails_helper'

describe Member do
  it 'exists' do
    attrs = {
      name: "Severus Snape",
      role: "Professor, Potions",
      house: "Slytherin",
      patronus: "doe"
    }

    member = Member.new(attrs)

    expect(member).to be_a Member
    expect(member.name).to eq("Severus Snape")
    expect(member.role).to eq("Professor, Potions")
    expect(member.house).to eq("Slytherin")
    expect(member.patronus).to eq("doe")
  end
end

require 'rails_helper'

RSpec.describe "As a visitor" do
  it "When I visit '/shelters' I can see the name of each shelter" do

    shelter_1 = Shelter.create(name: "ShelterName1")
    shelter_2 = Shelter.create(name: "ShelterName2")
    shelter_3 = Shelter.create(name: "ShelterName3")

    visit "/shelters"
  
    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content(shelter_2.name)
    expect(page).to have_content(shelter_3.name)
  end
end

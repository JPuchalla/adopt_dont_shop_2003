require 'rails_helper'

RSpec.describe "As a visitor" do
  it "When I visit a shelter's show page I see the shelter with name, address, city, state, zip" do

    shelter_1 = Shelter.create( name: "Pet Place",
                                address: "123 main st",
                                city: "Denver",
                                state: "Colorado",
                                zip: "80205"
                                )

    shelter_1 = Shelter.create( name: "Pet Shelter",
                                address: "483 main st",
                                city: "Denver",
                                state: "Colorado",
                                zip: "85748"
                              )

    visit '/shelters/#{shelter_1.id}'
    save_and_open_page
    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content(shelter_1.address)
    expect(page).to have_content(shelter_1.city)
    expect(page).to have_content(shelter_1.state)
    expect(page).to have_content(shelter_1.zip)

    expect(page).to_not have_content(shelter_2.name)
    expect(page).to_not have_content(shelter_2.zip)
  end
end

require 'rails_helper' 

RSpec.describe "Vendor Show Page", type: :feature do
    describe "As a visitor" do
        describe "When I visit a vendors show page vendors/:id", :vcr do
            it 'Shows me that vendors name,contant, credit accepted, and a description' do

                visit vendor_path(55823)

                expect(page).to have_content("blah")
                expect(page).to have_content("blah")
                expect(page).to have_content("blah")
                expect(page).to have_content("blah")

            end
        end
    end
end
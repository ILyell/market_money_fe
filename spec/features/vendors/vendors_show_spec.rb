require 'rails_helper' 

RSpec.describe "Vendor Show Page", type: :feature do
    describe "As a visitor" do
        describe "When I visit a vendors show page vendors/:id", :vcr do
            it 'Shows me that vendors name,contant, credit accepted, and a description' do

                visit vendor_path(55823)

                expect(page).to have_content("The Charcuterie Corner")
                expect(page).to have_content("Contact name: Claudie Langworth III, Phone Number: 1-147-179-9747")
                expect(page).to have_content("Accepts credit? false")
                expect(page).to have_content("Vendor selling a variety of artisanal cured meats and sausages.")

            end
        end
    end
end
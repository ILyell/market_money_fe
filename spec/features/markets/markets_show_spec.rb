require 'rails_helper'

RSpec.describe 'Market Show Page', type: :feature do
    describe 'As a visitor' do
        describe 'When I visit a markets show page', :vcr do
            it 'Shows that markets name and a formatted address' do

                visit market_path(322458)

                within '#name' do
                    expect(page).to have_content("14&U Farmers' Market")
                end

                within '#address' do
                    expect(page).to have_content("1400 U Street NW Washington, District of Columbia, 20009")
                end
            end

            it 'Shows vendors associated with that market, and each vendor is a link to that vendors show page' do

                visit market_path(322458)

                within '#vendors' do
                    within first '#vendor' do
                        expect(page).to have_link("The Charcuterie Corner")
                        click_link ("The Charcuterie Corner")
                        expect(current_path).to eq(vendor_path(55823))
                    end
                end
            end
        end
    end
end
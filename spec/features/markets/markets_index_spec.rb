require 'rails_helper'

RSpec.describe "Market index page", type: :feature do
    describe 'As a visitor' do
        describe 'When I visit /markets' do
            it 'Shows all markets with their name, city, and state' do
                visit markets_path

                expect(page).to have_css("market")

                within first "#market" do
                    expect(page).to have_css("name")
                    expect(page).to have_css("city")
                    expect(page).to have_css("state")
                end
            end

            xit 'Has a button to an individial markets show page' do
                visit markets_path

                within first "#market" do
                    expect(page).to have_button("Market Details")
                    click_button "Market Details"

                    expect(current_path).to eq(market_path(market))
                end
            end
        end
    end
end
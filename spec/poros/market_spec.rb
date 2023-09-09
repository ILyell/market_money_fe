require 'rails_helper'

RSpec.describe Market do
    it 'Exist and hold attributes' do
        market_hash = { name: "Market",
                        street: "1234 street name",
                        city: "mycity",
                        county: "county",
                        state: "WO",
                        zip: "33333",
                        lat: "345345",
                        lon: "345534" 
                    } 

        market = Market.new(market_hash)

        expect(market).to be_a Market

        expect(market.name).to eq("Market")
        expect(market.street).to eq("1234 street name")
        expect(market.city).to eq("mycity")
        expect(market.county).to eq("county")
        expect(market.state).to eq("WO")
        expect(market.zip).to eq("33333")
        expect(market.lat).to eq("345345")
        expect(market.lon).to eq("345534")
    end
end
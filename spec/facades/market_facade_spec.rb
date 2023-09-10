require 'rails_helper'

RSpec.describe MarketFacade do
    describe '#instance methods', :vcr do

        before(:each) do
            @params = {id: 322458}
        end

        it 'Creates market objects' do
            facade = MarketFacade.new(@params)

            markets = facade.markets
            
            expect(markets).to be_a Array
            
            market = markets[0]
            
            expect(market).to be_a Market
        end
        
        it 'Creates an individual market' do
            facade = MarketFacade.new(@params)
            expect(facade.market).to be_a Market
        end
        
        it 'Creates vendors from an associated market' do
            facade = MarketFacade.new(@params)

            vendors = facade.vendors

            expect(vendors).to be_a Array

            expect(vendors[0]).to be_a Vendor
        end
    end
end
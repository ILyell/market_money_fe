require 'rails_helper'

RSpec.describe MarketFacade do
    describe '#instance methods' do
        it 'Creates market objects', :vcr do
            facade = MarketFacade.new
            
            expect(facade.markets).to be_a(Array)
            # expect(facade.markets.count).to eq()
        end
    end
end
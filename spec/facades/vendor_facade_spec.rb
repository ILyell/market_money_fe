require 'rails_helper'

RSpec.describe VendorFacade do   
    describe '#instance methods', :vcr do
        it 'Creates an individual Vendor' do
            params = {id: 55823}
            facade = VendorFacade.new(params)
            expect(facade.vendor).to be_a Vendor
        end
    end
end
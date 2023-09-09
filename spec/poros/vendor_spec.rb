require 'rails_helper' 

RSpec.describe Vendor do
    it 'Exist and holds attributes' do
        vendor_hash = { name: "Vendor Name",
                        description: "A Vendor",
                        contact_name: "vendor owner",
                        contact_phone: "4234234234",
                        credit_accepted: true 
                    }

        vendor = Vendor.new(vendor_hash)

        expect(vendor).to be_a Vendor

        expect(vendor.name).to eq("Vendor Name")
        expect(vendor.description).to eq("A Vendor")
        expect(vendor.contact_name).to eq("vendor owner")
        expect(vendor.contact_phone).to eq("4234234234")
        expect(vendor.credit_accepted).to eq(true)

    end
end
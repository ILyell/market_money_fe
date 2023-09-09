require 'rails_helper'

describe MarketMoneyService do
    context "instance methods" do
        it 'can get a list of markets', :vcr do
            markets = MarketMoneyService.new.get_markets
 
            expect(markets).to have_key(:data)
            expect(markets[:data]).to be_a(Array)
    
            markets[:data].each do |market|
                expect(market).to have_key(:id)
                expect(market[:id]).to be_an(String)
    
                expect(market).to have_key(:type)
                expect(market[:type]).to be_an(String)
    
                expect(market).to have_key(:attributes)
                expect(market[:attributes]).to be_an(Hash)
    
                expect(market[:attributes]).to have_key(:name)
                # expect(market[:attributes][:name]).to be_an(String)
    
                expect(market[:attributes]).to have_key(:street)
                # expect(market[:attributes][:street]).to be_an(String)
    
                expect(market[:attributes]).to have_key(:city)
                # expect(market[:attributes][:city]).to be_an(String)
    
                expect(market[:attributes]).to have_key(:county)
                # expect(market[:attributes][:county]).to be_an(String)
    
                expect(market[:attributes]).to have_key(:state)
                # expect(market[:attributes][:state]).to be_an(String)
    
                expect(market[:attributes]).to have_key(:zip)
                # expect(market[:attributes][:zip]).to be_an(String)
    
                expect(market[:attributes]).to have_key(:lat)
                # expect(market[:attributes][:lat]).to be_an(String)
    
                expect(market[:attributes]).to have_key(:lon)
                # expect(market[:attributes][:lon]).to be_an(String)
    
                expect(market[:attributes]).to have_key(:vendor_count)
                # expect(market[:attributes][:vendor_count]).to be_an(Integer)
            end
        end

        it 'can get a single market', :vcr do
            market_id = 322458
            response =  MarketMoneyService.new.get_market(market_id)
            
            expect(response).to have_key(:data)
            expect(response[:data]).to be_a(Hash)
    
            market = response[:data]

            expect(market).to have_key(:id)
            expect(market[:id]).to be_an(String)
    
            expect(market).to have_key(:type)
            expect(market[:type]).to be_an(String)
    
            expect(market).to have_key(:attributes)
            expect(market[:attributes]).to be_an(Hash)
    
            expect(market[:attributes]).to have_key(:name)
            expect(market[:attributes][:name]).to be_an(String)
    
            expect(market[:attributes]).to have_key(:street)
            expect(market[:attributes][:street]).to be_an(String)
    
            expect(market[:attributes]).to have_key(:city)
            expect(market[:attributes][:city]).to be_an(String)
    
            expect(market[:attributes]).to have_key(:county)
            expect(market[:attributes][:county]).to be_an(String)
    
            expect(market[:attributes]).to have_key(:state)
            expect(market[:attributes][:state]).to be_an(String)
    
            expect(market[:attributes]).to have_key(:zip)
            expect(market[:attributes][:zip]).to be_an(String)
    
            expect(market[:attributes]).to have_key(:lat)
            expect(market[:attributes][:lat]).to be_an(String)
    
            expect(market[:attributes]).to have_key(:lon)
            expect(market[:attributes][:lon]).to be_an(String)
    
            expect(market[:attributes]).to have_key(:vendor_count)
            expect(market[:attributes][:vendor_count]).to be_an(Integer)
        end

        it 'can get a list of vendors associated with that market', :vcr do

            market_id = 322458
            response =  MarketMoneyService.new.get_market_vendors(market_id)
            
            expect(response).to have_key(:data)
            expect(response[:data].count).to eq(1)
    
            response[:data].each do |vendor|
                expect(vendor).to have_key(:id)
                expect(vendor[:id]).to be_an(String)
    
                expect(vendor).to have_key(:type)
                expect(vendor[:type]).to be_an(String)
    
                expect(vendor).to have_key(:attributes)
                expect(vendor[:attributes]).to be_an(Hash)
    
                expect(vendor[:attributes]).to have_key(:name)
                expect(vendor[:attributes][:name]).to be_an(String)
    
                expect(vendor[:attributes]).to have_key(:description)
                expect(vendor[:attributes][:description]).to be_an(String)
    
                expect(vendor[:attributes]).to have_key(:contact_name)
                expect(vendor[:attributes][:contact_name]).to be_an(String)
    
                expect(vendor[:attributes]).to have_key(:contact_phone)
                expect(vendor[:attributes][:contact_phone]).to be_an(String)
    
                expect(vendor[:attributes]).to have_key(:credit_accepted)
                expect(vendor[:attributes][:credit_accepted]).to be(true).or be(false)
            end
        end

        it 'can get a vendor from its id', :vcr do

            vendor_id = 54849

            response =  MarketMoneyService.new.get_vendor(vendor_id)

            expect(response).to have_key(:data)

            vendor = response[:data]

            expect(vendor).to have_key(:id)
            expect(vendor[:id]).to be_an(String)

            expect(vendor).to have_key(:type)
            expect(vendor[:type]).to be_an(String)

            expect(vendor).to have_key(:attributes)
            expect(vendor[:attributes]).to be_an(Hash)

            expect(vendor[:attributes]).to have_key(:name)
            expect(vendor[:attributes][:name]).to be_an(String)

            expect(vendor[:attributes]).to have_key(:description)
            expect(vendor[:attributes][:description]).to be_an(String)

            expect(vendor[:attributes]).to have_key(:contact_name)
            expect(vendor[:attributes][:contact_name]).to be_an(String)

            expect(vendor[:attributes]).to have_key(:contact_phone)
            expect(vendor[:attributes][:contact_phone]).to be_an(String)

            expect(vendor[:attributes]).to have_key(:credit_accepted)
            expect(vendor[:attributes][:credit_accepted]).to be(true).or be(false)
        end
    end
end
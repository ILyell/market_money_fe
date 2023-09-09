class MarketMoneyService

    def conn 
        Faraday.new(url: "http://localhost:3000") do |f|

        end
    end

    def get_url(url)
        response = conn.get(url) do |r|
        end
        JSON.parse(response.body, symbolize_names: true)
    end

    def get_markets
        get_url("/api/v0/markets")
    end

    def get_market(market_id)
        get_url("/api/v0/markets/#{market_id}")
    end

    def get_market_vendors(market_id)
        get_url("/api/v0/markets/#{market_id}/vendors")
    end

    def get_vendor(vendor_id)
        get_url("/api/v0/vendors/#{vendor_id}")
    end
end
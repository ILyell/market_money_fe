class MarketFacade

    def initialize(params)
        @params = params
    end

    def markets

    end

    def service
        @_market_service ||= MarketMoneyService.new
    end

    def markets
        markets = service.get_markets
        markets[:data].map do |market|
            Market.new(market)
        end
    end

    def market
        response = service.get_market(@params[:market_id])
        Market.new(response[:data])
    end

    def vendors
        response = service.get_market_vendors(@params[:market_id])
        response[:data].map do |vendor|
            Vendor.new(vendor)
        end
    end
end
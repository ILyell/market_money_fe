class MarketFacade

    def initialize 

    end

    def markets

    end

    def service
        @_market_service ||= MarketMoneyService.new
    end

    def markets
        markets = service.get_markets
        markets[:data].each do |market|
            Market.new(market)
        end
    end
end
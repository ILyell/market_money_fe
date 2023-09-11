class VendorFacade 

    def initialize(params)
        @params = params
    end

    def service
        @_market_service ||= MarketMoneyService.new
    end
    
    def vendor
        response = service.get_vendor(@params[:id])
        Vendor.new(response[:data])
    end
end
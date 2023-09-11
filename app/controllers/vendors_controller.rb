class VendorsController < ApplicationController
    def show
        @facade = VendorFacade.new(params)
        @vendor = @facade.vendor
    end
end
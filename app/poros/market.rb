class Market

    attr_reader :name,
                :street,
                :city,
                :county,
                :state,
                :zip,
                :lat,
                :lon

    def initialize(market)
        @name = market[:name]
        @street = market[:street]
        @city = market[:city]
        @county = market[:county]
        @state = market[:state]
        @zip = market[:zip]
        @lat = market[:lat]
        @lon = market[:lon]
    end
end
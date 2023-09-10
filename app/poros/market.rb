class Market

    attr_reader :id,
                :name,
                :street,
                :city,
                :county,
                :state,
                :zip,
                :lat,
                :lon

    def initialize(market)
        @id = market[:id]
        @name = market[:attributes][:name]
        @street = market[:attributes][:street]
        @city = market[:attributes][:city]
        @county = market[:attributes][:county]
        @state = market[:attributes][:state]
        @zip = market[:attributes][:zip]
        @lat = market[:attributes][:lat]
        @lon = market[:attributes][:lon]
    end
end
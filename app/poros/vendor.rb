class Vendor

attr_reader :id,
            :name,
            :description,
            :contact_name,
            :contact_phone,
            :credit_accepted

    def initialize(vendor)
        @id = vendor[:id]
        @name = vendor[:attributes][:name]
        @description = vendor[:attributes][:description]
        @contact_name = vendor[:attributes][:contact_name]
        @contact_phone = vendor[:attributes][:contact_phone]
        @credit_accepted = vendor[:attributes][:credit_accepted]
    end
end
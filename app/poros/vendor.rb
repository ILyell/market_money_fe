class Vendor

attr_reader :name,
            :description,
            :contact_name,
            :contact_phone,
            :credit_accepted

    def initialize(vendor)
        @name = vendor[:name]
        @description = vendor[:description]
        @contact_name = vendor[:contact_name]
        @contact_phone = vendor[:contact_phone]
        @credit_accepted = vendor[:credit_accepted]
    end
end
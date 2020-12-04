class Brewery
attr_accessor :name, :brewery_type, :street, :postal_code, :phone, :website_url

@@all = []   

def initialize(name, brewery_type, street, postal_code, phone, website_url)
    @name = name
    @brewery_type = brewery_type
    @street = street
    @postal_code = postal_code
    @phone = phone
    @website_url = website_url
@@all << self
end
    def self.all
        @@all
    end

end

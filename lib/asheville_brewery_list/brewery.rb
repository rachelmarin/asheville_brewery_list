class Brewery
attr_accessor :name, :brewery_type, :street, :postal_code, :phone, :website_url

@@all = []   

def initialize(name, brewery_type, street, postal_code, phone, website_url)
    self.name = data["name"]
    self.brewery_type = data["brewery_type"]
    self.street = data["street"]
    self.postal_code = data["postal_code"]
    self.phone = data["phone"]
    self.website_url = data["website_url"]
@@all << self
end

def self.all
    @@all
end
end

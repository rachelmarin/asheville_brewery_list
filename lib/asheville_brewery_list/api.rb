class Api

    def self.load_brewery
        response = RestClient.get("https://api.openbrewerydb.org/breweries?by_city=asheville&sort=type,-name")
        data = JSON.parse(response.body)
    
    end
    
   # data.each do |brewery_data|
     #   Brewery.new(brewery_data[1]["name"], brewery_data[1]["brewery_type"], brewery_data[1]["street"], brewery_data[1]["postal_code"], brewery_data[1]["phone"], brewery_data[1]["website_url"])
    #end
    #Brewery.all
end 

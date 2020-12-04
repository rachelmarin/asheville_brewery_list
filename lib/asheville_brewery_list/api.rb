class Api

   def self.get_data
       response = RestClient.get("https://api.openbrewerydb.org/breweries?by_city=asheville&sort=-id")
       data = JSON.parse(response.body)
       data.each do |brewery_data|
#binding.pry
     Brewery.new(brewery_data["name"], brewery_data["brewery_type"], brewery_data["street"], 
    brewery_data["postal_code"], brewery_data["phone"], brewery_data["website_url"])
    end
 end 
end

 
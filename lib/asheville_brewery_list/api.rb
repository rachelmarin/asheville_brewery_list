class Api

    def self.brewery_data
        response = RestClient.get("https://api.openbrewerydb.org/breweries?by_city=asheville&sort=-name")
        data = JSON.parse(response.body)

      binding.pry
    end
end
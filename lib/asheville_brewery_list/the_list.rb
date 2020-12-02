class The_list

    data.each do |brewery_data|
        Brewery.new(brewery_data[1]["name"]["name-USen"], brewery_data[1]["birthday"], brewery_data[1]["personality"], brewery_data[1]["species"], brewery_data[1]["catch-phrase"])
        #binding.pry
    end
    Brewery.all
    end
end
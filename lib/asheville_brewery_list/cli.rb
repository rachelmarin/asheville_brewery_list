class CLI
  
    def start
        system("clear")
        puts "Welcome to the Asheville Brewery List!"
        puts "Loading..."
        Api.brewery_data
        main_menu
    end

    def main_menu
        puts "Please type a number to select a brewery for information."
        list_options
    end

    def invalid
        puts "Invalid, please try again."
    end


end

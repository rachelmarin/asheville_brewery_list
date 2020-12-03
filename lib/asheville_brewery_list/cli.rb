class CLI

    def start
        system("clear")
        puts "Welcome to the Asheville Brewery List!"
        puts "Loading..."
        Api.load_brewery
        main_menu_options
    end

    def main_menu_options
        puts "Type '1' to list brewery names"
        puts "Type '2' to list brewery Type"
        puts "Type 'exit' to exit program"
        main_menu
    end

    def main_menu
        input = get_input

        if input == "1"
            list_brewery
            main_menu_options
        elsif input == "2"
            puts "Listing brewery type"
        elsif input == "exit"
            puts "Exiting Program"
            exit
        else
            invalid_choice
            main_menu_options
        end
    end

    def invalid_choice
        puts "Invalid. Please Try Again!"
    end

    def get_input
        print "Enter Choice: "
        gets.chomp
    end

    def list_brewery
        Brewery.all.each.with_index(1) do |brewery, index|
            puts "#{index}. #{brewery}"
        end

        brewery_details_menu_options
    end

    def brewery_details_menu_options
        puts "Select the number next to the brewery you wish to know more about."
        puts "Or type 'exit' to exit program"
        brewery_details_menu
    end

    def brewery_details_menu
        input = get_input

        if input.to_i.between?(1, Brewery.all.length)
            
            index = input.to_i - 1
            brewery = Brewery.all[index]
            print_brewery_details(name)
            select_again_or_exit
        elsif input == "exit"
            puts "Exiting Program"
            exit
        else
            invalid_choice
            brewery_details_menu_options
        end
    end

    def print_brewery_details(brewery)
        puts "-----------------"
        puts "Brewery Name: #{self.name}"
        puts "Brewery Type: #{self.brewery_type}"
        puts "Brewery Street: #{self.street}"
        puts "Brewery Zip Code : #{self.postal_code}"
        puts "Brewery Phone : #{self.phone}"
        puts "Brewery Website : #{self.website_url}"
        puts "-----------------"
    end

    def select_again_or_exit
        puts "Would you like to go back to the main menu or exit?"
        puts "'1' for main menu"
        puts "'exit' to exit program"
        input = get_input

        if input == '1'
            main_menu_options
        elsif input == "exit"
            puts "Goodbye!"
            exit
        else
            invalid_choice
            select_again_or_exit
        end
    end
end


class Cli

    def start
        system("clear")
        puts "Welcome to the Asheville Brewery List!"
        puts "Loading..."
        Api.get_data
        main_menu_options
    end

    def main_menu_options
        puts "Type '1' for a list of brewery selections by name"
        puts "Type 'exit' to exit program"
        main_menu
    end

    def main_menu
        input = get_input

        if input == "1"
            list_brewery
            main_menu_options
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
        Brewery.all.each.with_index(1) do |name, index|
            puts "#{index}. #{name.name}"
        end

        brewery_details_menu_options
    end

    def brewery_details_menu_options
        puts "Type in the corresponding number next to the brewery you wish to know more about, then press enter."
        puts "Or type 'exit' then press enter to exit program"
        brewery_details_menu
    end

    def brewery_details_menu
        input = get_input

        if input.to_i.between?(1, Brewery.all.length)
            
            index = input.to_i - 1
            brewery = Brewery.all[index]
            print_brewery_details(brewery)
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
        puts "Brewery Name: #{brewery.name}"
        puts "Brewery Type: #{brewery.brewery_type}"
        puts "Brewery Street: #{brewery.street}"
        puts "Brewery Zip Code : #{brewery.postal_code}"
        puts "Brewery Phone : #{brewery.phone}"
        puts "Brewery Website : #{brewery.website_url}"
        puts "-----------------"
        select_again_or_exit
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

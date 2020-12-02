class CLI
  #greet user
    def run
        system("clear")
        greeting
        #menu
        
        if menu != 'exit'
        end
        end_program
    end    
    
    def greeting
        puts "Welcome to the Asheville Brewery List!"
    end

    def end_program
        puts "Thank you for visiting, see you next time!"
    end

    def menu
        puts "please make a selection for brewery information"
        list_options
        input = gets.strip.downcase
        choose_option(input)
        return input
    end

end

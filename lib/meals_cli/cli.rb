class MealsCli::CLI

    def greeting
        puts ""
        puts "Welcome to Meals!"
        puts "To see Meals, enter Meals"
        puts "To exit enter exit"
        puts "_________________________"
        menu
    end 

    def menu
        input= gets.strip.capitalize

        if input == "Meals"
            meal_list
            menu
        elsif input == "exit"
            goodbye
        else
            invalid_entry
        end 
    end
    
    def meal_list
        Meal.all.each_with_index do |meal, index|
        puts "#{index + 1}. #{meals.title}"
        end 
        puts ""
        puts ""
        puts "Which meals would you like details about:"
        #enter comma
        input = gets.strip.downcase
        API.get_meal(input)
        meal_selection(input)
    end 
    
    def meal_selection(meal)
        puts "#{meal}"
    end 

    def goodbye
        puts "Thank you for visiting, Please come again!"
    end 

    def invalid_entry
        puts "invalid entry, try again"
        menu
    end 
end
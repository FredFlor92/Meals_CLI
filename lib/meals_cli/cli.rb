require 'pry'

class MealsCli::CLI

    def greeting
        puts ""
        puts "Welcome to Meals!"
        puts "To see meals, enter meals"
        puts "To exit enter exit"
        puts "_________________________"
        API.get_meal
        #binding.pry
        menu
        
    end 

    def menu
        input = gets.strip.downcase

        if input == "meals"
            meals_list
            menu
        elsif input == "exit"
            goodbye
        else
            invalid_entry
            menu
        end 
    end
    
    def meals_list
        Meal.all.each_with_index do |meal, index|
            puts "#{index + 1}. #{meal.strMeal}"
           # binding.pry
        end 
        puts ""
        puts ""
        puts "Which meals would you like details about:"
        #enter comma
        input = gets.strip.downcase
         
        meal_selection(input)
    end 
    
    def meal_selection(meal)
            menu = Meal.find_by_name(meal)
            menu.each do |s|
                binding.pry
                puts " strMeal: #{s.strMeal}"
                puts " strArea: #{s.strArea}"
                puts " strYoutube: #{s.strYoutube}"
                puts " strInstructions: #{s.strInstructions}"
            end

    end 

    def goodbye
        puts "Thank you for visiting, Please come again!"
    end 

    def invalid_entry
        puts "invalid entry, try again"
        menu
    end 
 end
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
        s = Meal.find_by_name(meal)
        if s
            display_meal(s)
        else
            invalid_entry
        end 

    end 

    def display_meal(meal)
        puts " Meal: #{meal.strMeal}"
        puts " Area: #{meal.strArea}"
        puts " Youtube: #{meal.strYoutube}"
        puts " Instructions: #{meal.strInstructions}"
        puts ""
        puts "Select meals to return to the list"
        puts "When complete plese input exit"
        menu
    end

    def goodbye
        puts "Thank you for visiting, Please come again!"
    end 

    def invalid_entry
        puts "invalid entry, try again"
        menu
    end 
 end
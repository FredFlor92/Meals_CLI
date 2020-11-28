class Meal

    
    attr_accessor :strMeal, :strArea, :strYoutube, :strInstructions, :strIngredients

    @@all = []
    def initialize(attributes)
        attributes.each do |key, value|
            self.send(("#{key}="), value) if self.respond_to?("#{key}=")
        end
        ingredients = ""
        (1..20).each do |n|
          if attributes["strIngredient"+n.to_s].is_a?(String) && !attributes["strIngredient"+n.to_s].empty?
            ingredients.concat(attributes["strIngredient"+n.to_s]).concat(", ")
          end
        end
      
      	self.send("strIngredients=", ingredients)
         
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.find do |meal|
            meal.strMeal.downcase == name.downcase
        end
    end 

end
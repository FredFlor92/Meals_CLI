class Meal

    
    attr_accessor :strMeal, :strArea, :strYoutube, :strInstructions

    @@all = []
    def initialize(attributes)
        # @name = name
        # @area = area
        # @youtube = youtube
        # @instructions = instructions
        attributes.each do |k, v|
            self.send(("#{k}="), v) if self.respond_to?("#{k}=")
        end
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
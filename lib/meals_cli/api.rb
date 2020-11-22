class API

    def self.get_meal

        response = RestClient.get("https://www.themealdb.com/api/json/v1/1/search.php?s=")
        meal_array = JSON.parse(response.body)["meals"]
        meal_array.each do |meal|
            Meal.new(meal)
        end
    end
end  
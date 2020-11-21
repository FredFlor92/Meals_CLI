class API

    def self.get_meal

        response = RestClient.get("https://www.themealdb.com/api/json/v1/1/search.php?s=")
        meal = JSON.parse(response.body)["meals"]
        meal.each do |meal|
            Meal.new(meal)
         end
    end
end  
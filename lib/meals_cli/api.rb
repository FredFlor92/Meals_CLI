class API

    def self.get_meal(input)

        response = RestClient.get("https://www.themealdb.com/api/json/v1/1/search.php?s=#{input}")
        meals = JSON.parse(response.body)["meals"]
        meals.each do |meal|
            Meal.new(meal)
         end
         binding.pry
    end
end  
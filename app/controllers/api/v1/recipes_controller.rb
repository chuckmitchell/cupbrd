module Api::V1
  class RecipesController < ApiController

    def search_fridge

      ingredients = Food.all.select{|food| !food.name.include?(',')}.map{|food| food.name}.join(',')

      # Number: Max Recipes returned
      # Ranking: 1 (maximize ingredients) or 2 (minimize missing ingredients)
      # fillIngredients: T or F Add information about the used and missing ingredients in each recipe.
      options = {number: "15", ranking: "2", fillIngredients: "true"}

      spoonacular = Spoonacular::API.new(ENV['MASHAPE_KEY'])
      result = spoonacular.find_by_ingredients(ingredients, options)

      render json: result.body

    end

  end
end

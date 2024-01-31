class PublicRecipeController < ApplicationController
  def index
    @recipes = Recipe.includes(:user, recipe_foods: :food).where(public: true).order(updated_at: :desc)
    @public = @recipes.to_a
  end
end

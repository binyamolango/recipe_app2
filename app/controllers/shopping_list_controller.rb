class ShoppingListController < ApplicationController
  def index
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_foods = current_user.recipe_foods.includes(:food)
    @shopping_list = @recipe_foods.select { |rf| rf.quantity > rf.food.quantity }
  end
end

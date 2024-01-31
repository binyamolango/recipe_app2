class RecipeFood < ApplicationRecord
  belongs_to :recipe
  belongs_to :food

  validates :quantity, numericality: { greater_than_or_equal_to: 0 }

  def value(food_id, recipe_food_id)
    unit_price = Food.find(food_id).price
    food_quantity = RecipeFood.find(recipe_food_id).quantity
    
    unit_price * food_quantity
  end
end

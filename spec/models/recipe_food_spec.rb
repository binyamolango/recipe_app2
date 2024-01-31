require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  before(:each) do
    user = User.create!(name: 'Binyam Yohannes', email: 'unique_email@example.com', password: 'password123')
    recipe = Recipe.create!(name: "Doro wot", description: "Great meal!", preparation_time: 1.5, cooking_time: 2.5, user: user)
    food = Food.create!(name: "Apple", measurement_unit: "grams", price: 20, quantity: 1000, user: user)
    @recipe_food = described_class.create!(quantity: 20, recipe: recipe, food: food, user_id: user.id)
  end

  it "is valid with valid attributes" do
    expect(@recipe_food).to be_valid
  end

  it 'quantity should be a number greater than zero' do
    @recipe_food.quantity = -5
    expect(@recipe_food).to_not be_valid
  end

  it "calculates the correct value for unit_price * food_quantity" do
    expected_value = @recipe_food.food.price * @recipe_food.quantity
    actual_value = @recipe_food.value(@recipe_food.food.id, @recipe_food.id)
    expect(actual_value).to eq expected_value
  end
end
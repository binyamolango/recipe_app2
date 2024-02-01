require 'rails_helper'

RSpec.describe RecipeFoodsController, type: :routing do
  before(:each) do
    @user = User.create(name: 'Binyam Yohannes', email: 'unique_email@example.com', password: 'password123')
    @recipe = Recipe.create(name: 'Doro wot', description: 'Great meal!', preparation_time: 1.5, cooking_time: 2.5,
                            user: @user)
    @food = Food.create(name: 'Apple', measurement_unit: 'grams', price: 20, quantity: 1000, user: @user)
    @recipe_food = RecipeFood.create(quantity: 20, recipe: @recipe, food: @food, user_id: @user.id)
  end

  describe 'routing' do
    it 'routes GET /recipe_foods to recipe_foods#index' do
      expect(get: '/recipes/1/recipe_foods').to route_to('recipe_foods#index', recipe_id: '1')
    end

    it 'routes POST /recipe_foods to recipe_foods#create' do
      expect(post: '/recipes/1/recipe_foods').to route_to('recipe_foods#create', recipe_id: '1')
    end

    it 'routes GET /recipe_foods/new to recipe_foods#new' do
      expect(get: '/recipes/1/recipe_foods/new').to route_to('recipe_foods#new', recipe_id: '1')
    end
  end
end

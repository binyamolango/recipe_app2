require 'rails_helper'

RSpec.describe Recipe, type: :model do
  user = User.create(name: 'Binyam Yohannes', email: 'olangobinyam@gmail.com', password: 'password123')
  recipe = Recipe.new(name: 'Doro wot', description: 'Great meal!', preparation_time: 1.5, cooking_time: 2.5,
                      user:)

  it 'is valid with valid attributes' do
    expect(recipe).to be_valid
  end

  it 'name should be present' do
    recipe.name = nil
    expect(recipe).to_not be_valid
  end

  it 'name length should be max of 250 character' do
    recipe.name = 'a' * 251
    expect(recipe).to_not be_valid
  end

  it 'preparation_time should be number greater than zero' do
    recipe.preparation_time = -5
    expect(recipe).to_not be_valid
  end

  it 'cooking_time should be number greater than zero' do
    recipe.cooking_time = -5
    expect(recipe).to_not be_valid
  end
end

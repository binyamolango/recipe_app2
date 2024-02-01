require 'rails_helper'

RSpec.describe Food, type: :model do
  user = User.create(name: 'John Doe', email: 'john@example.com')
  food = Food.new(name: 'Apple', measurement_unit: 'grams', price: 20, quantity: 1000, user:)

  it 'is valid with valid attributes' do
    expect(food).to be_valid
  end

  it 'name should be present' do
    food.name = nil
    expect(food).to_not be_valid
  end

  it 'measurement unit should be present' do
    food.measurement_unit = nil
    expect(food).to_not be_valid
  end

  it 'price should be number greater than zero' do
    food.price = -5
    expect(food).to_not be_valid
  end

  it 'quantity should be number greater than zero' do
    food.quantity = -5
    expect(food).to_not be_valid
  end
end

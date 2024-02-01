require 'rails_helper'

RSpec.describe 'Food index page', type: :feature do
  before :each do
    @user1 = User.create!(name: 'Tajemouti', email: 'tajemouti@gmail.com', password: '123456')
    @food = Food.new(name: 'Apple', measurement_unit: 'grams', price: 20, quantity: 1000, user: @user)

    visit '/users/sign_in'
    fill_in 'Email', with: 'tajemouti@gmail.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
  end

  it 'should have the following content' do
    visit '/foods'
    expect(page).to have_content('Food list')
    expect(page).to have_link('Food')
    expect(page).to have_link('Recipe list')
    expect(page).to have_content('Recipe App')
  end
end

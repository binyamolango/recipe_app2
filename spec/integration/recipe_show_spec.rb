require 'rails_helper'

RSpec.describe 'Recipe show page', type: :feature do
  before :each do
    @user1 = User.create!(name: 'Bin', email: 'bin@gmail.com', password: '123456')
    @recipe = Recipe.create(name: "Doro wot", description: "Great meal!", preparation_time: 1.5, cooking_time: 2.5, user: @user)

    visit '/users/sign_in'
    fill_in 'Email', with: 'bin@gmail.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
  end

  it 'should have the following content' do
    visit '/recipes/1'
    expect(page).to have_content('Recipe App')
    expect(page).to have_link('Public Recipe')
    expect(page).to have_link('Food list')
    expect(page).to have_link('Recipe list')
  end
end

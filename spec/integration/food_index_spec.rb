require 'rails_helper'

RSpec.describe 'Food index page', type: :feature do
  before(:each) do
    @user1 = User.create!(name: 'Binyam', email: 'bin@gmail.com', password: '123456')
    @user2 = User.create!(name: 'Newton', email: 'newton@gmail.com', password: '123456')
    @user3 = User.create!(name: 'Ngala', email: 'ngala@gmail.com', password: '123456')

    visit '/'
    fill_in 'Email', with: 'bin@gmail.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'

    visit '/foods'
  end

  it 'should have the following content' do
    # expect(page).to have_content('Apple', wait: 5)
    expect(page).to have_current_path(foods_path)
    # expect(@food).to be_valid
  end
end
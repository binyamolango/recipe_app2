require 'rails_helper'

RSpec.describe ShoppingListController, type: :routing do
  describe 'routing' do
    it 'routes GET /shopping_list to shopping_list#index' do
      expect(get: '/shopping_list/index').to route_to('shopping_list#index')
    end
  end
end
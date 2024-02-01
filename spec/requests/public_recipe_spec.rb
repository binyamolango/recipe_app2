require 'rails_helper'

RSpec.describe PublicRecipeController, type: :routing do
  describe 'routing' do
    it 'routes GET /public_recipe to public_recipe#index' do
      expect(get: '/public_recipe').to route_to('recipes#public_recipes')
    end
  end
end

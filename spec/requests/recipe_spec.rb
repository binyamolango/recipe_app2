require 'rails_helper'

RSpec.describe RecipesController, type: :routing do
  describe 'routing' do
    it 'routes GET /recipes to recipes#index' do
      expect(get: '/recipes').to route_to('recipes#index')
    end

    it 'routes GET /recipes/1 to recipes#show' do
      expect(get: '/recipes/1').to route_to('recipes#show', id: '1')
    end

    it 'routes POST /recipes to recipes#create' do
      expect(post: '/recipes').to route_to('recipes#create')
    end

    it 'routes GET /recipes/new to recipes#new' do
      expect(get: '/recipes/new').to route_to('recipes#new')
    end
  end
end

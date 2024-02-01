require 'rails_helper'

RSpec.describe FoodsController, type: :routing do
  describe 'routing' do
    it 'routes GET /foods to foods#index' do
      expect(get: '/foods').to route_to('foods#index')
    end

    it 'routes GET /foods/1 to foods#show' do
      expect(get: '/foods/1').to route_to('foods#show', id: '1')
    end

    it 'routes POST /foods to foods#create' do
      expect(post: '/foods').to route_to('foods#create')
    end

    it 'routes GET /foods/new to foods#new' do
      expect(get: '/foods/new').to route_to('foods#new')
    end
  end
end

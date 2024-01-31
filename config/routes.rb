Rails.application.routes.draw do
  devise_for :users, :controllers => { :confirmations => 'devise/confirmations' }
resources :foods
resources :recipes do
  resources :recipe_foods
end

devise_scope :user do
  get '/users/sign_out', to: 'devise/sessions#destroy'
  root to: 'devise/sessions#new'
end


# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

# Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
# Can be used by load balancers and uptime monitors to verify that the app is live.
# get "up" => "rails/health#show", as: :rails_health_check

# Defines the root path route ("/")
# root "posts#index"
get 'shopping_list/index', to: 'shopping_list#index', as: 'shopping_list_index'
get '/public_recipe', to: 'recipes#public_recipes'
resources :users
put '/recipes/:id/toggle_public', to: 'recipes#toggle_public', as: 'toggle_recipe_public'

end
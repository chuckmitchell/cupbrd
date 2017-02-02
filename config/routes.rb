# frozen_string_literal: true
Rails.application.routes.draw do
  scope module: 'api' do
    namespace :v1 do
      resources :users, as: 'users'
      resources :foods, as: 'foods'
      resources :items, as: 'items'
      resources :units, as: 'units'

      get "search_fridge", to: "recipes#search_fridge"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

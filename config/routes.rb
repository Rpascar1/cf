# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index'
  namespace :api do
    namespace :v1 do
      resources :reports
    end
  end
  get '*path', to: 'home#index'
end

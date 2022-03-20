Rails.application.routes.draw do
  namespace :api do 
    namespace :v1, defaults: {format: 'json'} do
      resources :comments
      resources :categories
      resources :products
    end
  end

  get "*page", to: "home#index", constraints: ->(req) do 
    !req.xhr? && req.format.html?
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"
end

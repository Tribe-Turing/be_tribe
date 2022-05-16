Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # get "/users", to: 'users#index'
      resources :users, only: [:index]
    end
  end
  mount ActionCable.server => "/cable"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [ :new, :create, :show ] do
    resources :devs, only: [ :new, :create, :destroy, :myprofile ] do
      resources :bookings, only: [ :new, :create, :destroy ]
    end
  end
end

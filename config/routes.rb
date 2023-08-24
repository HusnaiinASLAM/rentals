Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :rental do
    member do
      get :confirm_email
    end
  end
  root "rental#index"
  resources :vehicle
  resources :property
  # Defines the root path route ("/")
  # root "articles#index"
end

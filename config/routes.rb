Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # get "/items/my_items", to: "items#my_items"

  resources :items, only: [:index, :show, :new, :create, :update, :destroy] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:show, :destroy] do
    member do
      patch :test
    end
  end

  # get "/my_booked_items", to: "bookings#booked_items_index"
  get "/my_booked_items/:id", to: "bookings#booked_items_show", as: :my_booked_item
  patch "/my_booked_items/:id", to: "bookings#booked_items_update", as: :update_booked_item

  get "/dashboard", to: "bookings#dashboard"

  # Defines the root path route ("/")
  # root "posts#index"
end

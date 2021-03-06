Rails.application.routes.draw do
  devise_for :users, controllers: {
           :sessions => "users/sessions",
           :registrations => "users/registrations" }
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :parents, only: [:index, :show,:new, :create,:token] do
   resources :messages,only: [:new,:create,:index,:show]


   end
   resources :messages,only: [:new,:create]
   resources :about,only: [:index]


   resources :users do
    member do
      get :confirm_email
    end
  end

resources :orders, only: [:show, :create] do
  resources :payments, only: [:new, :create]
end

resources :subscriptions

resources :orders, only: [:show, :create]
end

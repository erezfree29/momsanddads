Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   resources :parents, only: [:index, :show,:new, :create] do
   resources :messages,only: [:new,:create,:index]

   end
   resources :messages,only: [:new,:create]
   resources :about,only: [:index]

end

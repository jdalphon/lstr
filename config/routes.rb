Rails.application.routes.draw do
  resources :items
#   

  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  resources :users, only: :show
  
  resources :lists

#   devise_scope :user do
#     get '/users/sign_out' => 'devise/sessions#destroy'
#   end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'application#home'
end

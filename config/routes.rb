Rails.application.routes.draw do
   devise_for :users
   root to: "home#index"


   resources :home
   resources :users, only: [:show, :edit, :update]
   resources :posts, only: [:new, :create, :show, :destroy]

  get 'search' => 'search#index'
end
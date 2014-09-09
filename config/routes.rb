Rails.application.routes.draw do
  devise_for :users


  get 'hangmen/challenge' => 'hangmen#challenge'
  #get 'hangmen/challenge/create' => 'challenges#create'
  resources :hangmen, only: [:index, :show, :create, :update]
  resources :challenges, only: [:create, :index]
  root to: "static_pages#home"
end

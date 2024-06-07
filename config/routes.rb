Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :music_records, only: [:index, :show, :create, :destroy, :update]
  resources :orders, only: [:create, :update, :show, :destroy]
  resources :users, only: [:show, :create, :update, :show]
end

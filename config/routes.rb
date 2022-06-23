Rails.application.routes.draw do
  resources :memberships, only: [:create]
  resources :gyms, only: [:index, :show, :create, :destroy]
  resources :clients, only: [:index, :show, :create]

end

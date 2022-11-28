Rails.application.routes.draw do
  resources :medicals
  resources :medical_histories
  resources :diaries
  resources :specialities
  resources :pets
  resources :test2s
  root 'static_pages#index'
  resources :species
  resources :responsibles
  resources :locations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

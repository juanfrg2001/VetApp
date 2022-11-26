Rails.application.routes.draw do
  resources :diaries
  resources :specialities
  resources :medicals
  resources :pets
  resources :medical_histories
  resources :test2s
  resources :pacients
  root 'static_pages#index'
  resources :species
  resources :responsibles
  resources :locations
  resources :especies
  resources :medicos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

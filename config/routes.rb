Rails.application.routes.draw do
  root 'static_pages#index'
  resources :medical_histories
  resources :diaries
  resources :pacients
  resources :species
  resources :responsibles
  resources :medicals
  resources :specialities
  resources :locations
  resources :especies
  resources :medicos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

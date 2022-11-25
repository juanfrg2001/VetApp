Rails.application.routes.draw do
  resources :historial_medicos
  resources :agendas
  resources :pacientes
  resources :especies
  resources :responsables
  resources :medicos
  resources :especialidads
  resources :sedes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

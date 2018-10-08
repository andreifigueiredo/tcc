Rails.application.routes.draw do
  wash_out :wsdl_services
  
  resources :sessaos
  resources :requisicaos
  resources :parametros
  resources :objsessaos
  resources :https
  resources :excecaos
  resources :acaos
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
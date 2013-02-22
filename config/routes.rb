Warstler::Application.routes.draw do

  resources :pages

  root to: 'pages#index'

  get 'reception' => 'pages#reception', :as => :reception
  get 'ourstory' => 'pages#ourstory', :as => :ourstory
  get 'registry' => 'pages#registry', :as => :registry
  
end

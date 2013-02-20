Warstler::Application.routes.draw do

  resources :pages

  root to: 'pages#index'

  get 'weddingdetails' => 'pages#weddingdetails', :as => :weddingdetails
  get 'ourstory' => 'pages#ourstory', :as => :ourstory
  get 'registry' => 'pages#registry', :as => :registry
  
end

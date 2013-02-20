Warstler::Application.routes.draw do

  resources :pages

  root to: 'pages#index'

  get 'wedding-details' => 'pages#weddingdetails', :as => :weddingdetails
  
end

Rails.application.routes.draw do
  root to:'static_page#Home'
  get 'static_page/Home', to: 'static_page#Home'
  get 'static_page/Team', to: 'static_page#Team'
  get 'static_page/Contact', to: 'static_page#Contact'

  #automatise l'écriture des routes du fichier
  resources :static_page, only:[:Home, :Team, :Contact]
  resources :gossips, only:[:new,:create,:show,:destroy,:update,:edit] #création des routes depuis le controleur gossip 
  resources :city, only:[:show]
  resources :users, only:[:show,:new,:create]
  resources :comments, only:[:new,:create,:show,:destroy,:update,:edit] 
  resources :sessions, only:[:new,:create,:destroy]
  resources :welcome, only:[:first_name]
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

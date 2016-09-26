Rails.application.routes.draw do
  devise_for :users
 
  resources :posts
  get 'welcome/index'

  resources :articles do
  	resources :comments


end
  root 'welcome#index'
  match "home/set_session" ,to: "home#change_languages", as: "languagepath", via: [:get]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

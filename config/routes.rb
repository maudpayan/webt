Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/product', to: 'pages#product'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/demo', to: 'pages#demo'

  get 'contact-me', to: 'messages#new', as: 'new_message'
  post 'contact-me', to: 'messages#create', as: 'create_message'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


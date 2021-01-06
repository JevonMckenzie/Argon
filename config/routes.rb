Rails.application.routes.draw do
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

    resources :firstformmaths do
      resources :comments
    end

  resources :comments do
    resources :comments
  end
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  #get 'users/new'
  root to: 'pages#dashboard'#, as: :root
 # match '/signup',  to: 'users#new'
  #devise_for :users
  get 'pages/dashboard'
  get 'pages/dashboard_personal'
  get 'pages/icons'
  get 'pages/profile'
  get 'pages/tables'
  get 'pages/login'
  get 'pages/register'
  get 'pages/upgrade'
  get 'pages/firstformmath'
  get 'pages/questionfirstmath'
  get 'pages/show'
  get 'pages/comment'
  #get 'pages/index'
  get 'firstmath', to: 'firstformmaths#show', as:'firstmath'
  #get '/firstformmath', to: 'pages#firstformmath'
  get '/signout', to: 'sessions#destroy', via: :delete
  get '/signup', to: 'pages#register', as: 'signup'
  get '/signin', to: 'pages#login', as: 'signin'


end

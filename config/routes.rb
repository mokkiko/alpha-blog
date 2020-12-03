Rails.application.routes.draw do

  root 'pages#home'
	get 'about', to: 'pages#about'
  get 'mtest', to: 'pages#mtest'
  #resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :articles
  resources :maxtest, only: [:show, :inde, :mtest]
  get 'signup', to: 'users#new'
  #post 'users', to: 'users#create'
  # to je samoe chto stroka vnizu
  resources :users, except: [:new]
end

Rails.application.routes.draw do

  root 'pages#home'
	get 'about', to: 'pages#about'
  get 'mtest', to: 'pages#mtest'
  resources :articles, only: [:show, :index, :new, :create]
  resources :maxtest, only: [:show, :inde, :mtest]

end

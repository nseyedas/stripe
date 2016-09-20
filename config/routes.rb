Rails.application.routes.draw do

  get 'tutors/_adam'

  get 'tutors/_alexk'

  get 'tutors/_allie'

  get 'tutors/_arman'

  get 'tutors/_ashley'

 

  get 'tutors/_cammeron'

  get 'tutors/_charlene'

  get 'tutors/_cyril'

  get 'tutors/_hadya'

  get 'tutors/_jon'

  get 'tutors/_paolo'

  get 'tutors/_ryenn'

  get 'tutors/_yvana'

  get 'tutors/_judith'

  get 'tutors/_max'

  get 'tutors/_tom'

  get 'tutors/_taylor'

  get '/users/info', to:'users#info'

  get '/users/cancel_subscription', to: 'users#cancel_subscription'

  get 'publications/index'

  get 'publications/show'

  devise_for :users
  resources :publications, only: [:index, :show]

  namespace :admin do
  	resources :publications
  end

  post '/users/charge', to: 'users#charge'



  root 'home#index'
  get 'home/index'
  get 'home/tutors'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

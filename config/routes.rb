Rails.application.routes.draw do
  resources :reviews
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  match '/signup',  to: 'users#new',            via: 'get'
<<<<<<< HEAD
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
=======
match '/addreview',  to: 'reviews#new',            via: 'get'
>>>>>>> 0adab08e66367e51da6fcd8d1d7fcabc184dd977
  post '/rate' => 'rater#create', :as => 'rate'

  get 'hotels/index'
  match '/add',  to: 'hotels#new',            via: 'get'
  root 'hotels#index'
  get '/help' => 'static#help'
get '/about' => 'static#about'
get '/contact' => 'static#contact'
resources :hotels

end

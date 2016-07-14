Rails.application.routes.draw do

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  post '/rate' => 'rater#create', :as => 'rate'

  get 'hotels/index'
  match '/add',  to: 'hotels#new',            via: 'get'
  root 'hotels#index'
  get '/help' => 'static#help'
get '/about' => 'static#about'
get '/contact' => 'static#contact'
resources :hotels

end

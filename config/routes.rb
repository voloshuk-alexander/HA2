Rails.application.routes.draw do
  resources :reviews
  resources :users
  match '/signup',  to: 'users#new',            via: 'get'
match '/addreview',  to: 'reviews#new',            via: 'get'
  post '/rate' => 'rater#create', :as => 'rate'

  get 'hotels/index'
  match '/add',  to: 'hotels#new',            via: 'get'
  root 'hotels#index'
  get '/help' => 'static#help'
get '/about' => 'static#about'
get '/contact' => 'static#contact'
resources :hotels

end

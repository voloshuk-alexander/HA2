Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  get 'hotels/index'
  match '/add',  to: 'hotels#new',            via: 'get'
  root 'hotels#index'
  get '/help' => 'static#help'
get '/about' => 'static#about'
get '/contact' => 'static#contact'
resources :hotels

end

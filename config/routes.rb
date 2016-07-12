Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  get 'hotels/index'
  match '/add',  to: 'hotels#new',            via: 'get'
  root 'hotels#index'
resources :hotels

end

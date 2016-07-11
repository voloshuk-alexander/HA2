Rails.application.routes.draw do
  get 'hotels/index'
  match '/add',  to: 'hotels#new',            via: 'get'
  root 'hotels#index'
resources :hotels

end

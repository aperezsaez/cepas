Rails.application.routes.draw do
  resources :magazines
  resources :oenologists
  devise_for :users,  :controllers => { registrations: 'users/registrations', sessions: 'users/sessions' }
  resources :strains
  resources :straings
  resources :wines
  root 'wines#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

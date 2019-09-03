Rails.application.routes.draw do
  devise_for :users
  resources :houses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'dashboard#index'
  get :search, controller: :main
#  root to: redirect('/search')

end

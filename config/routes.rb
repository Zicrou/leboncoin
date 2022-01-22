Rails.application.routes.draw do
  resources :modeles
  resources :marques
  #devise_for :users
  resources :cars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', sign_up: 'cmon_let_me_in' }
  root to: 'cars#index'
end

Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  root to: "home#index"


  namespace :pairs do
    delete :delete_all_pairs
    post :generate_pairs
  end

  resources :users, only: [:show, :index] do
    resources :pairs, only: [:index, :show, :create, :delete]

  end

  # get :users "users#generate_pairs" as: generate_pairs

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end

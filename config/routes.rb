Rails.application.routes.draw do

  devise_for :users
root :to => "dashboard#show"
resources :goods
resources :reviews#, only: [:create]
resources :contacts

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :members
  resources :posts, only: [:index, :new, :create]
  root 'posts#index'
  get '/about', to: 'static_pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

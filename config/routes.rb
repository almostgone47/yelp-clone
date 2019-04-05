Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  resources :restaurants do
    collection do
      get 'search'
    end
    resources :reviews
  end
  
  root 'restaurants#index'
  get 'pages/home', to: 'pages#home'
  get 'pages/about', to: 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :restaurants do
    resources :meals
  end

  get "/profile/:id", to: "pages#profile", as: :user_profile

end

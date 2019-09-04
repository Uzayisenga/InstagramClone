Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  resources :profiles
  devise_for :users, controllers: {registrations: "registrations"}
  resources :favorites, only: [:create, :destroy, :index]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end

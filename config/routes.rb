Rails.application.routes.draw do
  devise_for :users
  resources :watchlists
  resources :movies
  get 'home/index'
  get 'home/about'
  get 'home/watchlist'
  get 'home/top10'
  get 'home/mostcollected'
  get 'home/personalwishlist'
  #get 'welcome/index' ## our default rouce for now.
  #resources :articles
  root 'welcome#index' ## reason, so we can have this route in root path.
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

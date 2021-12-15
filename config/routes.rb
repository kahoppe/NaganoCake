Rails.application.routes.draw do
  # get 'genres/index'
  # get 'genres/edit'
  devise_for :admins, path: 'admin', controllers: {
      sessions: 'admin/sessions',
      passwords: 'admin/passwords',
      registrations: 'admin/registrations'
  }

  namespace :admin do
    resources :genres
    resources :orders
    resources :customers
    resources :items

  end

  scope module: :public do
    devise_for :customers, controllers: {
      sessions: 'public/sessions',
      passwords: 'public/passwords',
      registrations: 'public/registrations'
    }
    # root to: 'homes#top'
    get "home/about" => "homes#about"
    root to: 'homes#top'

    resources :orders
    resources :cart_items
    resources :items
    resources :addresses
    resources :customers
  end






end

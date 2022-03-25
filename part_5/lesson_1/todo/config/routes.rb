Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  resources :events do 
    resources :items
  end

  get 'events/page/(:page(.:format))', to: 'events#index'

  get 'about', to: 'about#index', as: 'about_index'

  get 'about/other', to: 'about#index'
  get 'about/:hello', to: 'about#index'

  root 'events#index'
end

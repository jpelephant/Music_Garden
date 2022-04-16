Rails.application.routes.draw do
  devise_for :admins
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope module: :customers do
    root to: 'homes#top'
    resources :customers, only: [:show, :edit, :update]
    resources :reviews
    get 'reviews', to: 'reviews#search'
    get 'reviews', to: 'reviews/choice'
    get 'reviews', to: 'reviews/select'
    resources :favorite, only: [:index, :create, :destroy]
  end
  namespace :admin do
    resources :reviews
    get 'reviews', to: 'reviews#search'
    get 'reviews', to: 'reviews/choice'
    get 'reviews', to: 'reviews/select'
    
    resources :customers, except: [:new, :create, :des]
  end

end

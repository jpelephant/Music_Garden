Rails.application.routes.draw do
  namespace :admins do
    get 'admin/show'
    get 'admin/edit'
    get 'admin/update'
  end
  devise_for :admins
  devise_for :customer
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope module: :customer do
    root to: 'homes#top'
    resources :customers, only: [:show, :edit, :update]
    resources :reviews
    get 'reviews', to: 'reviews#search'
    get 'reviews', to: 'reviews/tag'
    get 'reviews', to: 'reviews/tag_index'
    resources :favorite, only: [:index, :create, :destroy]
  end
  namespace :admin do
    resources :reviews
    get 'reviews', to: 'reviews#search'
    get 'reviews', to: 'reviews/tag'
    get 'reviews', to: 'reviews/tag_index'

    resources :customers, except: [:new, :create, :des]
  end

end

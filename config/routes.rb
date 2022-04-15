Rails.application.routes.draw do
  devise_for :admins
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope module: :customers do
    root to: 'homes#top'
    resc
  end
  namespace :admin do
  end

end

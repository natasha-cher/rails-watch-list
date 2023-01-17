Rails.application.routes.draw do
  root to: 'lists#index', as: 'home'
  resources :lists, only:[ :index, :show, :new, :create ] do
    resources :bookmarks, only:[ :new, :create, :destroy]
  end
end

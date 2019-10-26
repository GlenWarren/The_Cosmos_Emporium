Rails.application.routes.draw do
  devise_for :users#, controllers: { registrations: 'registrations' }
  root to: 'pages#home'
  get 'basket', to: "pages#basket"
  get 'checkout', to: "pages#checkout"
  get 'confirmation', to: "pages#confirmation"

  resources :categories do
    resources :sub_categories, only: [:index, :show, :new, :create] do
      resources :filters, only: [:index, :show, :new, :create]
    end
    resources :products, only: [:index, :show, :new, :create]
  end
  resources :orders do
    resources :order_items, only: [:index, :show, :new, :create]
  end
  resources :sub_categories, only: [:edit, :update, :destroy]
  resources :products, only: [:edit, :update, :destroy]
  resources :filters, only: [:destroy]
  resources :order_items, only: [:destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

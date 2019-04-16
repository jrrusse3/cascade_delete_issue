Rails.application.routes.draw do
  devise_for :accounts
  resources :abets do
    collection {post :import}
  end

  resources :courses_users do

  end

  resources :courses do
    collection {post :import }
  end
  resources :users do
    collection { post :import }
  end

  root 'courses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :abets do
    collection {post :import}
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

Rails.application.routes.draw do
  root to: "users#index"

  get 'users/index'

  get 'users/import' => 'users#my_import'

  resources :users do
    collection {post :import}
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

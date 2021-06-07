Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  # define dynamic route as PATCH instead of PUT
  # PUT updates the entire object, PATCH only updates the elements changed
  patch 'posts/:id', to: 'posts#update'
end

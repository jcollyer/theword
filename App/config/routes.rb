App::Application.routes.draw do
  root to: 'home#index'
  # namespace :api do
  #   namespace :v1 do
  #     resources :biblebooks, only: [:index, :show, :new, :edit]
  #   end
  # end
  resources :biblebooks
end

Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :questions, only: [:show] do
        resources :answers, only: [:index, :show, :create]
      end

      resources :locations, only: [:index, :show]
    end
  end
end

Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :questions, only: [:show] do
        resources :answers, only: [:create]
      end

      resources :locations, only: [:index, :show]
    end
  end
end

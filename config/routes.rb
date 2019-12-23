Rails.application.routes.draw do
  root to: "todos#index"
  resources :todos do
    member do
      post :toggle
    end
  end
end
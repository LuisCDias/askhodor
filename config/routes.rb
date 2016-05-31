Rails.application.routes.draw do
  resources :trendiness
  resources :grades
  resources :writers do
    member do
      get :choose
      post :apply
    end
  end

  root 'home#index'
end


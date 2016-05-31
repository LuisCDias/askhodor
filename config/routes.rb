Rails.application.routes.draw do
  resources :trendiness

  root 'home#index'
end


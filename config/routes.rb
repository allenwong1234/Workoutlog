Rails.application.routes.draw do
  get 'user/index'
    get 'home/index'
    
    resources :accounts
    
    root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# Rails.application.routes.draw do
#   # get 'cocktails/new'
#   # get 'cocktails/show'
#   # get 'cocktails/index'
#   # get 'cocktails/create'
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   resources :cocktails
#   resources :doses
#   resources :ingredients
# end


Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create]
    resources :reviews, only: [:create]
  end
  resources :doses, only: [:destroy]
end

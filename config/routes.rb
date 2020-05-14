Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails do # GardensController#...
    resources :doses
    resources :ingredients
  end
  resources :doses
  resources :ingredients

end

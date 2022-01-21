Rails.application.routes.draw do
  get 'businesses/random' => 'businesses#random'
  resources :businesses
end

Rails.application.routes.draw do
  get 'businesses/random' => 'businesses#random'

  delete 'businesses/clear' => 'businesses#delete_all'

  resources :businesses
end

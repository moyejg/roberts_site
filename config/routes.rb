Rails.application.routes.draw do
  resources :listservs
  devise_for :users
  resources :events
  root 'site#home'
  get 'about' => 'site#about'
  get 'music' => 'site#music'
  get 'events' => 'site#events'
  get 'contact' => 'site#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

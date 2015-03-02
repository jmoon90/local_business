Rails.application.routes.draw do
  resources :states, except: [:new, :edit]
  resources :cities, except: [:new, :edit]
  resources :businesses, except: [:new, :edit]
  root 'businesses#index'
  resources :businesses, :except => [:delete]
end

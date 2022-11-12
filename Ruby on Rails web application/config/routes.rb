Rails.application.routes.draw do
  get 'home/index'
  resources :sections
  resources :semesters
  resources :courses
  resources :prefixes
  resources :students
  
  resources :searches
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"
end

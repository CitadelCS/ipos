Rails.application.routes.draw do
    
  resources :welcome
  resources :students
  root "courses#index"
  resources :courses
  resources :professors
  
end

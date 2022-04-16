Rails.application.routes.draw do
  devise_for :admin_users
  devise_for :employees
  devise_for :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

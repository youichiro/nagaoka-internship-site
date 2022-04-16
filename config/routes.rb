Rails.application.routes.draw do
  root to: 'home#index'
  get '/hello', to: 'hello#index'

  devise_for :admin_users
  devise_for :employees
  devise_for :students, controllers: {
    registrations: 'students/registrations'
  }
end

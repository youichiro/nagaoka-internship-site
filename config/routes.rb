Rails.application.routes.draw do
  root to: 'home#index'
  get '/hello', to: 'hello#index'

  devise_for :admin_users
  devise_for :students, controllers: {
    registrations: 'students/registrations',
    sessions: 'students/sessions',
  }
  devise_for :employees, controllers: {
    registrations: 'employees/registrations',
    sessions: 'employees/sessions',
  }

  resources :employees, only: [:show]
end

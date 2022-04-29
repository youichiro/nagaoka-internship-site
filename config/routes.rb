Rails.application.routes.draw do
  root to: 'home#index'
  get '/hello', to: 'hello#index'

  devise_for :admin_users, only: [:sessions], controllers: {
    sessions: 'admin_users/sessions',
  }
  devise_for :students, controllers: {
    registrations: 'students/registrations',
    sessions: 'students/sessions',
  }
  devise_for :employees, controllers: {
    registrations: 'employees/registrations',
    sessions: 'employees/sessions',
  }

  resources :admin_users, only: [:show]
  resources :students, only: [:show]
  resources :employees, only: [:show]
  resources :internships, only: [:index, :show]

  resources :companies, only: [:index, :show, :edit, :update] do
    resources :internships, controller: 'companies/internships'
  end

  namespace :admin do
    resources :companies
    resources :student_details
    resources :business_categories
    resources :internships
    resources :employee_details
    resources :employees
    resources :students
    resources :admin_users

    root to: "business_categories#index"
  end
end

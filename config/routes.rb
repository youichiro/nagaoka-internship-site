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
  resources :courses, only: [:index, :show]
  resources :announcements, only: [:index, :show]

  resources :companies, only: [:index, :show, :edit, :update] do
    resources :internships, controller: 'companies/internships'
  end

  namespace :admin do
    resources :admin_users
    resources :students
    resources :student_details
    resources :business_categories
    resources :companies
    resources :employees
    resources :employee_details
    resources :internships
    resources :course_categories
    resources :courses
    resources :announcement_categories
    resources :announcements

    root to: "companies#index"
  end
end

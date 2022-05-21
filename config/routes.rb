Rails.application.routes.draw do
  root to: 'pages#home'
  get '/privacy_policy', to: 'pages#privacy_policy'
  get '/terms_of_service', to: 'pages#terms_of_service'

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
  resources :employees, only: [:show] do
    resources :course_orders, controller: 'employees/course_orders', only: [:index]
  end
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
    resources :course_attendance_types
    resources :courses
    resources :employee_course_orders
    resources :announcement_categories
    resources :announcements

    root to: "companies#index"
  end
end

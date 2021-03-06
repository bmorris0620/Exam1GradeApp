Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  resources :students
  resources :second_exams
  resources :quizzes
  resources :first_exams
  resources :assignments
  resources :enrollments
  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

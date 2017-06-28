Rails.application.routes.draw do
  devise_for :users
  resources :teachers
  resources :reports
  resources :subjects
  resources :visitors, only: [:index]
  resources :students do
  	
    get :subjects
   
  end
root 'students#index'

get 'reports/subject' => 'reports#subject', :as => :subject_reports


get :subjects, controller:"reports"
end
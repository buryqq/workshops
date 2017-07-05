Rails.application.routes.draw do
  devise_for :users
  resources :teachers do
  	get :subjects
  end
  resources :reports
  resources :subjects
  resources :visitors, only: [:index]
  resources :students do
  	
    get :subjects
   
  end
root 'students#index'

get 'reports/subject' => 'reports#subject', :as => :report_subjects


get :subjects, controller:"reports"
end
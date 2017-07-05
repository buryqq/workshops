Rails.application.routes.draw do
  devise_for :users

  resources :teachers do
  	get :subjects
  end
    

  
  resources :students do
  	get :subjects
  end

root 'visitors#index'

get 'reports/subject' => 'reports#subjects', :as => :report_subjects


end
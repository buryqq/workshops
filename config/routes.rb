Rails.application.routes.draw do
  devise_for :users
  resources :teachers
  resources :subjects
  resources :visitors, only: [:index]
  resources :students do
  	
    get :subjects
   
  end
root 'visitors#index'

end

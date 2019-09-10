Rails.application.routes.draw do

  # get 'users/index'
  # get 'users/show'

  resources :users
  resources :projects

  devise_for :users
    root 'courses#index'

    

    resources :courses do
      resources :course_modules do
        resources :sections
      end
    end
end

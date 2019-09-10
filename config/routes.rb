Rails.application.routes.draw do

  get 'project/index'

  devise_for :users
    root 'courses#index'

    

    resources :courses do
      resources :course_modules do
        resources :sections
      end
    end
end

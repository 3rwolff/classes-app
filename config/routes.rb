Rails.application.routes.draw do

  devise_for :users
    root 'courses#index'

    resources :courses do
      resources :course_modules do
        resources :sections
      end
    end
end

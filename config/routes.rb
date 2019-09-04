Rails.application.routes.draw do

    root 'courses#index'

    resources :courses do
      resources :course_modules do
        resources :sections
      end
    end
end

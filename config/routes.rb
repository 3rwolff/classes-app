Rails.application.routes.draw do

    root 'courses#index'

    resources :courses do
      resources :course_modules
    end
end

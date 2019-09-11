Rails.application.routes.draw do

  get 'glossary_items/edit'

  get 'glossary_items/update'

  get 'glossary_items/destroy'

  # get 'glossary_items/edit'

  # get 'glossary_items/update'

  # get 'glossary_items/destroy'

  # get 'glossaries/index'

  # get 'glossaries/show'

  # get 'users/index'
  # get 'users/show'

  resources :users
  resources :projects
  resources :glossaries
  resources :glossary_items

  devise_for :users
    root 'courses#index'

    

    resources :courses do
      resources :course_modules do
        resources :sections
      end
    end
end

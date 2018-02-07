Rails.application.routes.draw do

  resources :students, shallow: true do
    resources :addresses, only: [:create, :new]
  end

  resources :course, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

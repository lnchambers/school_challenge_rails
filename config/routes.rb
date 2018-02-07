Rails.application.routes.draw do

  resources :students, shallow: true do
    resources :addresses, only: [:create, :new]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

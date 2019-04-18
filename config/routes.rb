Rails.application.routes.draw do
  root 'patient#index'
  get 'patient/index'
  get 'patient/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'user/index', to: 'user#index'
  get 'user/demo', to: 'user#demo'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

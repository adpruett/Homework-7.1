ContactBook::Application.routes.draw do
  resources :contacts

  root 'pages#index'

end

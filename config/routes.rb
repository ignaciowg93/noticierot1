Rails.application.routes.draw do

  
  ActiveAdmin.routes(self)
  resources :articles do
    resources :comentarios
  end
  root 'articles#index'
end

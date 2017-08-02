Rails.application.routes.draw do
  get 'admin/index'

  get 'admin/update'

  devise_for :users
  get 'sales/mysales'

  resources :sales do
    resources :items
  end
  
  root 'sales#index'

  get "admin" => "admin#index"
  put "admin/:id" => "admin#update"
  patch "admin/:id" => "admin#update"

end

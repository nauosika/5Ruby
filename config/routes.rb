Rails.application.routes.draw do
  root 'tasks#index'

  resources :tasks do
    collection  do
      get :order_by_end_at
    end
  end

end

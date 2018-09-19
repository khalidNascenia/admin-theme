Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users/sign_in', to: 'devise/sessions#new'

  root to: 'home#index'

  resources :home do
    collection do
      get :dashboard2
      get :buttons
      get :typography
      get :pages_profile
      get :pages_timeline
      get :pages_invoice
      get :pages_contact
      get :pages_login
    end
  end

end

Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users/sign_in', to: 'devise/sessions#new'

  root to: 'home#index'

  resources :home do
    collection do
      get :dashboard2
    end
  end
  resources :ui_elements do
    collection do
      get :typography
      get :buttons
      get :ui_fontAwsome
      get :material_design_icon
      get :ion_icons
      get :ui_cards
      get :tab_accordian
      get :ui_modals
      get :ui_bootstrap
      get :progress_bar
      get :notifications
      get :sweet_alert
    end
  end
  resources :pages do
    collection do
      get :profile
      get :timeline
      get :pages_invoice
      get :pages_contact
      get :login
      get :pages_register
    end
  end
  resources :components do
    collection do
      get :grids
      get :portlets
      get :widgets
      get :range_slider
      get :nestable
      get :calendar
    end
  end
  resources :ui_forms do
    collection do
      get :foms_validation
      get :forms_advanced
      get :forms_code_editor
      get :forms_crop_image
      get :forms_editor
      get :forms_elements
      get :forms_upload
      get :forms_wizard
      get :forms_xeditable
    end
  end

end

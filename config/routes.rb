Rails.application.routes.draw do
  resources :departments do
  post 'revert', :on => :member
  get 'list_versions', :on => :member
end

  resources :products do
    post 'revert', :on => :member
    get 'list_versions', :on => :member
  end

  resources :products do
    post 'revert', :on => :member
    get 'list_versions', :on => :member
  end

  resources :producers do
    post 'revert', :on => :member
    get 'list_versions', :on => :member
  end

  resources :farmers do
    resources :dashboard, only: %i[index], controller: 'farmer_dashboard'
    post 'revert', :on => :member
    get 'list_versions', :on => :member
  end

  resources :inline_forms_translations do
    post 'revert', :on => :member
    get 'list_versions', :on => :member
  end

  resources :inline_forms_keys do
    post 'revert', :on => :member
    get 'list_versions', :on => :member
  end

  resources :inline_forms_locales do
    post 'revert', :on => :member
    get 'list_versions', :on => :member
  end

  mount Ckeditor::Engine => '/ckeditor'
  resources :roles do
    post 'revert', :on => :member
    get 'list_versions', :on => :member
  end

  resources :locales do
    post 'revert', :on => :member
    get 'list_versions', :on => :member
  end

  devise_for :users, :path_prefix => 'auth'
  resources :users do
    post 'revert', :on => :member
    get 'list_versions', :on => :member
  end


  resources :pages
  # root to: 'farmers#index'
  root to: 'pages#home'
end

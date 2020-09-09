Rails.application.routes.draw do



  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}
  devise_for :tour_providers, controllers: {
  sessions:      'tour_providers/sessions',
  passwords:     'tour_providers/passwords',
  registrations: 'tour_providers/registrations'
}


  resources :events

  namespace :tour_providers do
    resource :tour_providers, only: [:edit, :update, :show]
    resource :tours, only: [:new, :create, :show, :edit, :update]
  end

  namespace :users do
    resources :tour_providers, only:[:index, :show] do
      resources :comments, only: [:create, :destroy]
      resource :favorites, only: [:create, :destroy]
      get 'inquiry/index', to: "inquiry#index"
      post 'inquiry/confirm', to: "inquiry#confirm"
      post 'inquiry/thanks', to: "inquiry#thanks"
    end
  end

  root to: 'homes#top'
  get "home/top", to: "homes#top"
  get "home/about", to: "homes#about"
  get 'search', to: 'homes#search'
  get 'tour_providers', to: 'homes#index'
  get 'tour_providers/:id', to: 'homes#show' ,as: :home_show

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

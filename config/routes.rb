Rails.application.routes.draw do

  resources :events
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

  #root to: 'tour_providers/registrations#new'
  root to: 'homes#top'
  get "home/top" => "homes#top"
  get "home/about" => "homes#about"


  namespace :tour_providers do
    resource :tour_providers, only: [:edit, :update, :index, :show]
    resource :tours, only: [:new, :create, :show, :edit, :update]
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

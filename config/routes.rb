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

  root to: 'homes#top'
  get "home/about" => "homes#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

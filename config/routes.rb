Rails.application.routes.draw do
  root 'users#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  resources :users
  get 'users/:id/matches', to: 'users#matches', as: 'users_matches'
  delete "attachments/:id/purge", to: "attachments#purge" , as: "purge_attachments"

  get 'like/:liker_id/:likee_id', to: 'likes#create', as: 'create_like'
end

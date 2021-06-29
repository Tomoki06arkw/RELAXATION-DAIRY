Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'private_people', to: 'users/registrations#new_private_person'
    post 'private_people', to: 'users/registrations#create_private_person'
  end

  root to: "texts#index"
end

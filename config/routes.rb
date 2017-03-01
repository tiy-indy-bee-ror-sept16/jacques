Rails.application.routes.draw do

  scope :api do
    resources :notes, only: [:create, :index]
    resources :users, only: [:create]
    get "/notes/tag/:id" => 'tags#show'
  end
end

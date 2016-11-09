Rails.application.routes.draw do
  root 'api/notes#index'
  get 'api/notes/tag/:name' => 'tags#show'
  scope "/api" do
    resources :notes do
      resources :tags


    end
  end
end

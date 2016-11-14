Rails.application.routes.draw do

  resources :users
  scope '/api' do
    resources :notes, only: [:index, :create]
    get '/notes/tag/:id' => 'tags#show'
  end

end

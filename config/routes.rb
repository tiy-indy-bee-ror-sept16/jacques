Rails.application.routes.draw do



  scope '/api' do
    get '/notes/tag/:name' => 'tags#show'
  resources :notes do
    resources :tags
  end
end
end

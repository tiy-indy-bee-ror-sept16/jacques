Rails.application.routes.draw do
  scope '/api' do
    resources :notes do
      resources :tags
    end
    get '/notes/tag/:id' => 'tags#show'
  end

end

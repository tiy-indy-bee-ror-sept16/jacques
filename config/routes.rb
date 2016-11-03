Rails.application.routes.draw do

get 'api/routes/tag/:name' => 'tags#show'
scope '/api' do
    resources :notes do
      resources :tags
    end
  end
end

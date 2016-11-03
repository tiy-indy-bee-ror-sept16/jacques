Rails.application.routes.draw do

  scope '/api' do
    resources :notes
    get '/notes/tag/:id' => 'tags#show'
  end

end

Rails.application.routes.draw do

  scope '/api' do
  resources :notes do
    resources :tags
  end
end
end

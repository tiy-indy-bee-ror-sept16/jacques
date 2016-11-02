Rails.application.routes.draw do
  scope '/api' do
    resources :tags
    resources :notes
  end
end

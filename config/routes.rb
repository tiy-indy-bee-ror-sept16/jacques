Rails.application.routes.draw do
    scope 'api' do
        # get   '/notes'
        # post  '/notes'
        # get   '/notes/tag/De-engineered'
        # post  '/notes/tag/De-engineered'
        # get   '/notes.json'
        # get   '/notes/tag/(:id)'
        resources :tags
        resources :notes
    end
end

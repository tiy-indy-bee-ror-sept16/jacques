Rails.application.routes.draw do
    scope '/api' do
        get '/notes/tag/:name' => 'tags#show'
        # get   '/notes'
        # post  '/notes'
        # get   '/notes/tag/De-engineered'
        # post  '/notes/tag/De-engineered'
        # get   '/notes.json'
        # get   '/notes/tag/(:id)'
                resources :notes do
                    resources :tags
                end
            end
end
    #     Prefix Verb   URI Pattern                            Controller#Action
    #  note_tags GET    /api/notes/:note_id/tags(.:format)     tags#index
    #            POST   /api/notes/:note_id/tags(.:format)     tags#create
    #   note_tag GET    /api/notes/:note_id/tags/:id(.:format) tags#show
    #            PATCH  /api/notes/:note_id/tags/:id(.:format) tags#update
    #            PUT    /api/notes/:note_id/tags/:id(.:format) tags#update
    #            DELETE /api/notes/:note_id/tags/:id(.:format) tags#destroy
    #      notes GET    /api/notes(.:format)                   notes#index
    #            POST   /api/notes(.:format)                   notes#create
    #       note GET    /api/notes/:id(.:format)               notes#show
    #            PATCH  /api/notes/:id(.:format)               notes#update
    #            PUT    /api/notes/:id(.:format)               notes#update
    #            DELETE /api/notes/:id(.:format)               notes#destroy

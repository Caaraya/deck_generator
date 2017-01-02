Rails.application.routes.draw do
  get '/', to: 'deckbrowser#browse_decks'

  get 'view_deck', to: 'deckviewer#show_deck'

  get 'build_deck', to: 'deckbuilder#create_deck'

  post 'create', to: 'deckbrowser#create'
  resources :decks

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :blocks, :levels, :scores, :games
      # get '/api/v1/games/:id/levels/:id', to: 'levels#show', as: 'level'
    end
  end
end

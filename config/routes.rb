Rails.application.routes.draw do
  root "landings#show"

  resources :news_articles, only: [:index]
end

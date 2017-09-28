Rails.application.routes.draw do
  
  post 'short', to: 'links#create', as: :short_link
  get '/:code' => "links#show"

  root to: 'home#index'

end

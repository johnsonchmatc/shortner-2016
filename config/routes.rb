Rails.application.routes.draw do

  resources :links, only: [:index, :new, :show, :create]
  
  get '/:id' => 'redirect#show'
  
  root 'links#new'
end

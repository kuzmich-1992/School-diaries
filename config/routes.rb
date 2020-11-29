Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'diaries/index'
      post 'diaries/create'
      get '/show/:id', to: 'diariess#show'
      delete '/destroy/:id', to: 'diaries#destroy'
    end
  end
  root 'homepage#index'
  get '/*path' => 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


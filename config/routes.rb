Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/home' => 'places#home'
  get '/about' => 'places#about'
  get '/places' => 'places#index'
  get '/places/:id' => 'places#show'
  get '/compare' => 'places#compare'
end

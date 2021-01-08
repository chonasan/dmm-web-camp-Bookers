Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "books#top"
  get "/books" => "books#index"
  
  post 'books' => 'todolists#create'
  
  resources :blogs
 end

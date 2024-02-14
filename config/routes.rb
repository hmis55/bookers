Rails.application.routes.draw do
  get 'books/new'
  post 'books' =>'books#create'
  get 'books/index' => 'books#index'
  get "books/:id" =>'books#show',as: 'book'
  get "books/:id/edit" =>'books#edit',as: 'edit_book'
  get '/top' =>'home#top'
  delete 'books/:id' => 'books#destroy',　as:'destroy_book'
end

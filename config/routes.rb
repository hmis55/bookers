Rails.application.routes.draw do
  get 'books/new'
  post 'books' =>'books#create'
  get 'books/index' => 'books#index'
  get 'books/show'
  get 'books/edit'
  get '/top' =>'home#top'
  delete 'books/:id' => 'book#destroy',　as:'destroy_book'
end

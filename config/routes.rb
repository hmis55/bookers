Rails.application.routes.draw do
  get 'book/new'
post 'books' =>'books#create'
  get 'book/index'
  get 'book/show'
  get 'book/edit'
  get '/top' =>'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

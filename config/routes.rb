Rails.application.routes.draw do

  root 'static_pages#home'
  # get 'static_pages/home'
  get '/help', to: 'static_pages#help'
  get '/signup_shop', to: 'shops#new'
end

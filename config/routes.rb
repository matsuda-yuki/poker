Rails.application.routes.draw do
  root to: 'visitors#index'

  get "/home" => "home#top"
  get "/home/check" => "home#check"

end

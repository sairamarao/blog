Mywikirev::Application.routes.draw do

root :to => "users#new"
get "log_out" => "sessions#destroy", :as => "log_out"
get "log_in" => "sessions#new", :as => "log_in"
get "sign_up" => "users#new", :as => "sign_up"
get "reviews" =>"reviews#index", :as=>"reviews"
resources :users
resources :sessions
resources :reviews
end

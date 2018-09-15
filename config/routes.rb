Rails.application.routes.draw do
  
  
  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"
  
  get 'circles/index'
  get "circles/top" => "circles#top"
  get "circles/ready"  => "circles#ready"
  get "circles/new" => "circles#new"
  
  
  

  
  get "users/login_form" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "users/:id/index" => "users#index"
  get "users/:id" => "users#mypage"
  get "users/:id/mypage_belong" => "users#mypage_belong"
  get "users/:id/mypage_startup" => "users#mypage_startup"
  get "users/:id/mypage_now" => "users#mypage_now"
  get "users/:id/edit" => "users#edit"
  get "users/:id/likes" => "users#likes"
  
  post "users/:id/update" => "users#update"
  post "users/create" => "users#create"
  
  
  get "posts/index" => "posts#index"
  get "posts/ready" => "posts#ready"
  get "posts/:id/show" => "posts#show"
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
  get "posts/category" => "posts#category"
  

  
  get "/"  => "home#top"
  post "home/areapage" => "home#areapage"
  
  
  
  
  
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

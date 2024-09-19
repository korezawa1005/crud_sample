Rails.application.routes.draw do
  # 一覧画面へのルーティング
  get "/users" => "users#index"

  # 新規投稿画面へのルーティング
  get "/users/new" => "users#new"

  get "/users/:id" => "users#show"

  get "/users/:id/edit" => "users#edit"
  # 新規登録を行うためのルーティング
  post "/users" => "users#create"

  patch "/users/:id" => "users#update"

  delete "/users/:id" => "users#destroy"


  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end

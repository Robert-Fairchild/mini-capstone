Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  namespace :v1 do
    
    get "/products" => "products#index"
    post "/products" => "products#create"
    get "/products/:id" => "products#show"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"
    
    post "/users" => "users#create"
    post "/orders" => "orders#create"
    get "/orders" => "orders#index"
    get "/suppliers" => "suppliers#index"
    post "/suppliers" => "suppliers#create"
    get "/suppliers/:id" => "suppliers#show"
    patch "/suppliers/:id" => "suppliers#update"
    delete "/suppliers/:id" => "suppliers#destroy"

    post "/carted_products" => "carted_products#create"

  end
end

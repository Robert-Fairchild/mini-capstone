Rails.application.routes.draw do
  get "/stick" => "products#stick_method"
  get "/elbow" => "products#elbow_method"
  get "/shins" => "products#shins_method"
  get "/shirt" => "products#shirt_method"
  get "/jock" => "products#jock_method"
  get "/skates" => "products#skates_method"




end

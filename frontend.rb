require "unirest"
require "pp"

system "clear"
puts " Welcome to Robs Hockey Shop"
puts "[1] See all equipment"
puts "[2] Create new peice of equipment"
puts "[3] Pick peice of equipment you would like to see"

input_option = gets.chomp

if input_option == "1"
  response = Unirest.get("http://localhost:3000/v1/products")
  products = response.body
  pp products 
elsif input_option == "2" 
  params = {}
  print "Enter equipment name:"
  params["input_name"] = gets.chomp
  print "Enter Price:"
  params["input_price"] = gets.chomp
  print "Enter image:"
  params["input_image"] = gets.chomp 
  response = Unirest.post("http://localhost:3000/v1/products", parameters: params)
  product = response.body
  if product["errors"]
    puts "No good!"
    p product["errors"]
  else 
    puts "All good!"
    pp product 
  end
elsif input_option == "3" 
  print "Which peice of equipment would you like to see?"
  recipe_id = gets.chomp
  response = Unirest.get("/products/:id")
end 



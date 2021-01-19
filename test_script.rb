#index action
require "http"

response = HTTP.get("http://localhost:3000/api/products")

pp response.parse

#show action
require "http"

puts "Please enter an id number to find a product:"

id = gets.chomp

response = HTTP.get("http://localhost:3000/api/products/#{id}")

pp response.parse

#
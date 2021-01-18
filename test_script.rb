#index action
require "http"

response = HTTP.get("http://localhost:3000/api/products")

pp response.parse
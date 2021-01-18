Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    get "/products" => "products#index"
    get "/products/:id" => "products#show"

    # get "/any_product_path" => "products#any_product_action"
    # get "/any_product_path/:id" => "products#any_product_action"
  end
end

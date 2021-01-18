class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render "index.json.jb"
  end
  
  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "show.json.jb"
  end

  def create
    #create new product
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description]
    )
    @product.save
    render "show.json.jb"
  end

  def update
    #updates an existing product
    product_id = params[:id]
    @product = Product.find_by(id: product_id)

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description

    @product.save
    render "show.json.jb"
  end

end

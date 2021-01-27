class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    if params[:discount]
      @products = @products.where("price < ?", 60)
    end

    if params[:search]
      @products = @products.where("name iLIKE ? OR description iLIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")
    end

    if params[:sort] == "price" && params[:sort_order] == "asc"
      @products = @products.order(:price)
    elsif params[:sort] == "price" && params[:sort_order] == "desc"
      @products = @products.order(price: :desc)
    else
      @products = @products.order(:id)
    end
    render "index.json.jb"
  end
  
  def show
    if current_user
      product_id = params[:id]
      @product = Product.find_by(id: product_id)
      render "show.json.jb"
    else 
      render json: {}, status: :unauthorized
    end
  end

  def create
    #create new product
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description]
    )
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    #updates an existing product
    product_id = params[:id]
    @product = Product.find_by(id: product_id)

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description

    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    #deletes an existing product
    product_id = params[:id]
    product = Product.find_by(id: product_id)

    product.destroy
    # render json: {"Product successfully"}
  end

end

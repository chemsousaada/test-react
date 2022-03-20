class Api::V1::ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  # GET /products or /products.json
  def index
    @products = Product.all
    render json: @products
  end

  # GET /products/1 or /products/1.json
  def show
    render json: @product
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status:200
    else
      render json: {error:@product.errors}, status:301
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    if @product.update(product_params)
      render json: @product, status:200
    else
      render json: {error:@product.errors}, status:301
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    if @product.destroy
      render json: {message:"Supprimé avec succès."}, status:200
    else
      render json: {error:@product.errors}, status:301
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :price, :category_id_id, :stock)
    end
end

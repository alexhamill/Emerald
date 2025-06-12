class ProductsController < ApplicationController
  def index
    @products = Product.all
    @ownerships = current_user.ownerships.includes(:product) if current_user
  end

  def add_to_owned
    
    product = Product.find(params[:id])
    item_code = SecureRandom.uuid
      
    if current_user.emeralds >= product.price
      current_user.ownerships.create!(
      product: product,
      item_code: item_code
      )
      current_user.update!(emeralds: current_user.emeralds - product.price)
      redirect_to products_path, notice: "thanks for your purchase :)"
    else
      redirect_to products_path, alert: "Not enough emeralds to buy this product."
    end

  end
  


end
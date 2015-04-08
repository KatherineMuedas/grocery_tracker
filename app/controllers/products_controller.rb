class ProductsController < ApplicationController
  # before_action :find_product, only:[:edit, :update]



  def edit
    @product = Product.find(params[:id])
  end

  def update
    #find the product
    @product = Product.find(params[:id])
    if @product.update(product_params)
    redirect_to root_path
    else
    render 'edit'
    end
    
    #adds on got it form hidden field for product cycle
    #check strong parameter
  end

  
  private

  def product_params
    lattest_purchase_attributes = [:id, :quantity, :unit_measurement, :store, :expiration_date, :purchase_date, :price, :unit_price, :product_id]
    params.require(:product).permit(:name, :product_type, :product_cycle,:user_id, lattest_purchase_attributes: lattest_purchase_attributes ) 
  end 


end

class ProductsController < ApplicationController
  # before_action :find_product, only:[:edit, :update]



  def edit
    @product = Product.find(params[:id])
    @product.purchases.build
  end

  def update
  end

  
  private

  def product_params
    # purchases_attributes = [:id, :quantity, :unit_measurement, :store, :expiration_date, :purchase_date, :price, :unit_price, :product_id]
    params.require(:clothe).permit(:name, :product_type, :product_cycle,:user_id) #products_attributes: products_attributes
  end 

  # def set_clothe
  #   @clothe = @closet.clothes.find(params[:id])
  # end

  # def find_list 
  #   @list = List.find(params[:list_id])
  # end

 
end

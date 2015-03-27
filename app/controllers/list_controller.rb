class ListController < ApplicationController
  before_action :authenticate_user!
  before_action :find_list, only:[:edit, :update]  


  def show
    @list = current_user.list
    @products = @list.products.all
  end

  def edit


  end

  def update
    if @list.update(list_params)
      redirect_to @list
    else
      render 'edit'
    end
  end

  private

  def find_list
    @list = List.find(params[:id])
  end

  def list_params
    # purchases_attributes = [:id, :store, :quantity, :]
    lattest_purchase_attributes = [:id, :store, :quantity, :unit_measurement ]
    products_attributes = [:id,:name, :product_type, :product_cycle,:user_id, lattest_purchase_attributes: lattest_purchase_attributes ]
    params.require(:list).permit(:user_id, products_attributes: products_attributes )
  end

  
 


end

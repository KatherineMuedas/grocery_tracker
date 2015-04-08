class ListController < ApplicationController
  include SmartListing::Helper::ControllerExtensions
  helper  SmartListing::Helper
  
  before_action :authenticate_user!
  before_action :find_list, only:[:edit, :update]  

  
  def show
    @list = current_user.list
    @products_to_buy = smart_listing_create(:products_to_buy, @list.products.where(product_cycle: 0), partial: "list/products_to_buy_list", default_sort: {name: "asc"})
    @products_stock = @list.products.where(product_cycle: 1)
  end

  def edit


  end


  def update
    if @list.update_attributes(list_params)
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
    products_attributes = [:id, :name, :product_type, :product_cycle, :user_id, :_destroy, lattest_purchase_attributes: lattest_purchase_attributes ]
    params.require(:list).permit(:user_id, products_attributes: products_attributes )
  end

end

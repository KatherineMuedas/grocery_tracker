class ListController < ApplicationController
  before_action :authenticate_user!
  before_action :find_article, only:[:edit, :update]  


  def show
    @list = current_user.list
  end

  def edit


  end

  def update
    if @find.update(list_params)
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
    params.require(:list).permit(:user_id)
  end


end

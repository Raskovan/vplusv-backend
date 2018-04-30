class ItemsController < ApplicationController

  def buy
    @item = ApiAdapter.quantity(item_id: params[:item_id])
    render json: @item
  end

  def list
    @items = ApiAdapter.merchandise
    render json: @items
  end

  def inventory
    @inventory = ApiAdapter.inventory(item_id: params[:item_id])
    render json: @inventory
  end


end

class MysaunasController < ApplicationController

  def index
    @saunas = Mysauna.all
  end

  def new
    @saunas = Mysauna.new
  end


  def create
    Mysauna.create(mysauna_params)
  end

  def destroy
    @sauna = Mysauna.find(params[:id])
    @sauna.destroy
  end

  def show
    @sauna = Mysauna.find(params[:id])
  end

  private

  def mysauna_params
    params.require(:saunas).permit(:title, :address, :prefecture_id, :customer_id, :star_id, :price, :review)
  end


end

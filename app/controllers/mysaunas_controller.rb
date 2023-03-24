class MysaunasController < ApplicationController
  before_action :set_sauna, only: [:edit, :show, :destroy, :update]
  before_action :move_to_index, only: [:edit, :update, :destroy]

  def index
    @saunas = Mysauna.all
  end

  def new
    @saunas = Mysauna.new
  end


  def create
    @mysauna = Mysauna.new(mysauna_params)
    if @mysauna.save
      redirect_to mysaunas_path
      else
      render :new
      end
  end

  def destroy
    @sauna = Mysauna.find(params[:id])
    @sauna.destroy
  end

  def show
  end

  def edit
  end

  def update
    @sauna = Mysauna.find(params[:id])
    @sauna.update(mysauna_params)
  end


  private

  def mysauna_params
    params.require(:mysauna).permit(:image, :title, :address, :prefecture_id, :customer_id, :star_id, :price, :review).merge(user_id: current_user.id)
  end

  def set_sauna
    @sauna = Mysauna.find(params[:id])
  end

  def move_to_index
    redirect_to root_path unless user_signed_in?
  end

end

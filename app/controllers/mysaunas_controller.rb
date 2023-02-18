class MysaunasController < ApplicationController

  def index
    @saunas = Mysauna.all
  end

  def new
    @saunas = Mysauna.new
  end

end

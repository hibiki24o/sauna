class SaunasController < ApplicationController
  def index
    @saunas = Tweet.all
  end
end

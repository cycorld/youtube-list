class PlayerController < ApplicationController
  def index
    if List.where(id: params[:id]).take
      @list = List.find(params[:id])
    else
      @list = List.last
    end
  end
end

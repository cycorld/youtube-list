class PlayerController < ApplicationController
  def index
    if List.where(id: params[:id]).take
      @list = List.find(params[:id])
      @list.count += 1
      @list.save!
    else
      @list = List.create()
      redirect_to "/#{@list.id}"
    end
  end

  def add_clip
    latest = List.find(params[:id]).clips.order(:later).last

    if latest
      last = latest.later
    else
      last = 1
    end

    Clip.create(list_id: params[:id],
                url: params[:url],
                later: last + 1)

    redirect_to "/#{params[:id]}"
  end
end

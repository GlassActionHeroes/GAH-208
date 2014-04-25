class PusherController < ApplicationController
  protect_from_forgery :except => :auth # stop rails CSRF protection for this action

  def create
    response = Pusher[params[:channel_name]].authenticate(params[:socket_id])
    render :json => response
  end

  def show
    response = Pusher[params[:channel_name]].authenticate(params[:socket_id])
    render :text => params[:callback] + "(" + response.to_json + ")"
  end
end

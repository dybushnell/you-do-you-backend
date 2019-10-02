class Api::V1::MessagesController < ApplicationController
  def index
    messages = Message.all
    render json: messages
  end

  def show
    message = Message.find(params[:id])
    render json: message
  end

  def create
    message = Message.create(
      message_text: params[:message_text],
      sender_id: params[:sender_id],
      recipient_id: params[:recipient_id],
    )
    render json: message
  end

  def update
    message = Message.find(params[:id])
    message.update(
      message_text: params[:message_text],
      sender_id: params[:sender_id],
      recipient_id: params[:recipient_id],
    )
    render json: message
  end

  def destroy
    message = Message.find(params[:id])
    message.delete
    # render json: message
  end
end

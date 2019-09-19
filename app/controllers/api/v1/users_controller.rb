class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      birthday: params[:birthday],
      location: params[:location],
      relationship_goal: params[:relationship_goal],
      blood_type: params[:blood_type],
      image_url: params[:image_url],
    )
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      birthday: params[:birthday],
      location: params[:location],
      relationship_goal: params[:relationship_goal],
      blood_type: params[:blood_type],
      image_url: params[:image_url],
    )
    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.delete
    render json: user
  end
end

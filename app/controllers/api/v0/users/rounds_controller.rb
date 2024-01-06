class Api::V1::Users::RoundsController < ApplicationController

  before_action :set_user


  def show
    @round = @user.rounds.find(params[:id])
    render json: RoundSerializer.new(@round)
  end


  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def round_params
    params.permit(:game_id, :status, :type, :target_weather_stats, :vote_content, :round_photo)
  end
end



class Api::V1::SessionsController < ApplicationController
  before_action :authenticate_user!
  def whoami
    puts current_user
    render json: current_user, status: :ok
  end
end
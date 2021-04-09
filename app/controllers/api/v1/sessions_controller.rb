class Api::V1::SessionsController < ApplicationController
  def whoami
    puts current_user
    render json: current_user, status: :ok
  end
end
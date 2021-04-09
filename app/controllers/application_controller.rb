class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  skip_before_action :verify_authenticity_token, if: :devise_controller?

  before_action :authenticate_user!, unless: :devise_controller?

  respond_to :json
end

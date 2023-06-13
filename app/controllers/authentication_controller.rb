class AuthenticationController < ApplicationController
  before_action :authorize_request, except: :login

  # POST /auth/login
  def login
    @user = User.find_by_phone_no(params[:phone_no])
    if @user&.authenticate(params[:password])
      token = JsonWebToken.encode(id: @user.id)
      time = Time.now + 24.hours.to_i
      render json: {
        token: token,
        exp: time,
        id: @user.id
      }, status: :ok
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end

  private

  def login_params
    params.permit(:email, :password)
  end
end

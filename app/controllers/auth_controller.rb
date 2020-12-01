
class AuthController < ApplicationController

  def create

    if params[:title] === 'manager' 
       @user = Manager.find_by(username: params[:username])
      else
        @user = Salesrep.find_by(username: params[:username])
    end

    if @user && @user.authenticate(params[:password])
      token = encode("id": @user.id)
      render json: 
      {
        authenticated: true,
        message: "login success",
        token: token,
        user: @user,
      }, status: :accepted
    else
        render json: {
        authenticated: false,
        message: "login failed"
      }, status: :unauthorized 
  end
  
  
end
end

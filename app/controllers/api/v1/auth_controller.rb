class Api::V1::AuthController < ApplicationController

    def create
      @manager = Manager.find_by(username: params[:username])
      if @manager && @manager.authenticate(params[:password])
         #if user exists and password is a match
        token = encode("manager_id": @manager.id)
        render json: 
        {
          authenticated: true,
          message: "login success",
          token: token,
          user: @manager,
          #manager: @manager
        }, status: :accepted
      else
        #if user does not exist OR password not a match
          render json: {
          authenticated: false,
          message: "login failed"
        }, status: :unauthorized 
      end
    end
    
    
    end


class  ManagersController < ApplicationController

    def findbyUsername
        render json: Manager.find(request.filtered_parameters["username"]), status: :accepted
    end

    def show
         render json: Manager.find(params[:id]), status: :accepted
    end

    def index
        @managers = Manager.all
        render json: Manager.all.to_json
    end

    
    
     def create
        @manager = Manager.new(manager_params)
        
        if @manager.valid?
           @manager.save!
            render json: @manager.to_json()
            
        end
    
    end
    
    
    def update
        manager = Manager.find(params[:id])
        manager.update(manager_params)
        render json: manager.to_json()
    end
    
    
    def destroy
    
        @manager= Manager.find(params[:id])
        @manager.destroy
    end
    
    
    def manager_params
        params.permit(:first_name , :last_name , :title, :email, :password, :photo, :username)  
      end
    
    
end


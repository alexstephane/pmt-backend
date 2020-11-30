class  Api::V1::ManagersController < ApplicationController

    def show
        #byebug
         #render json: Manager.find_by(username: params[:username])
        #  token = request.headers["Authentication"].split(" ")[1]
        #  render json: Manager.find(params[:id]), status: :accepted
         
         #token = request.headers["Authentication"].split(" ")[1]
         #token = encode("manager_id":5)
         render json: Manager.find(request.filtered_parameters["username"]), status: :accepted
         #byebug
        


        #  token = request.headers["Authentication"].split(" ")[1]
        # render json: Manager.find_by(username:params[:username]), status: :accepted
        #byebug
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

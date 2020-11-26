class ManagersController < ApplicationController
    def index
        @managers = Manager.all
        render json: Manager.all.to_json
    end

    def show
        render json: Manager.find(params[:id]).to_json
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
        params.permit(:first_name , :last_name , :title, :email, :password, :photo)  
      end
  

      
end

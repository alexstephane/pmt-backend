

class SalesrepsController < ApplicationController

    def index
        @salesreps = Salesrep.all
        render json: Salesrep.all.to_json
    end  

    def show
        render json: Salesrep.find(params[:id]).to_json
    end

    def update
        @salesrep = Salesrep.find(params[:id])
        @salesrep.update(salesrep_params)
        render json: @salesrep.to_json()
    end

    def create
        @salesrep = Salesrep.new(salesrep_params)
        
        if @salesrep.valid?
           @salesrep.save!
           render json: @salesrep.to_json()
        end
    
    end

    def destroy
        
       @salesrep= Salesrep.find(params[:id])
       @salesrep.destroy
    end

    def salesrep_params
        params.require(:salesrep).permit(:first_name , :last_name , :title, :email, :password, :photo, :manager_id, :password) 
         
    end

end
        
        






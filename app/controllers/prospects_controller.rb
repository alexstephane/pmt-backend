
class ProspectsController < ApplicationController
    def index
        @prospects = Prospect.all
        render json: Prospect.all.to_json
    end

    def show
        render json: Prospect.find(params[:id]).to_json
        
    end


    def update
        @prospect = Prospect.find(params[:id])
        @prospect.update(prospect_params)
        render json: @prospect.to_json()
    end

    def create
        @prospect = Prospect.new(prospect_params)
        
        if @prospect.valid?
           @prospect.save!
            render json: @prospect.to_json()
            
        end
    
    end

    def destroy

        @prospect= Prospect.find(params[:id])
        @prospect.destroy
    end


    def prospect_params
        params.require(:prospect).permit(:first_name , :last_name , :title, :email,:phone,:managed_id,:status, :created_by,:salesperson_id ) 
         
      end


end

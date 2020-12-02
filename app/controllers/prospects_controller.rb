
# class ProspectsController < ApplicationController
#     def index
#         @prospects = Prospect.all
#         render json: Prospect.all.to_json
#     end

#     def show
#         # http://localhost:3003/prospects?find_by=salesrep
#         #render json: Prospect.find(salesrep.filtered_parameters["salesperson_id"]), status: :accepted
#         #render json: Prospect.find().to_json

#         #render json: Prospect.find(params[:id]), status: :accepted
#         @prospect = Prospect.find(:salesrep_id)
#           render json: @prospect.to_json
        

        
#     end


#     def findbyId
       
        
#             #render json: Prospect.find(salesrep.filtered_parameters["salesperson_id"]), status: :accepted
        
    
#         render json: Prospect.find(salesrep_id: params[:salesrep_id]), status: :accepted
#     end




#     def update
#         @prospect = Prospect.find(params[:id])
#         @prospect.update(prospect_params)
#         render json: @prospect.to_json()
#     end

#     def create
#         @prospect = Prospect.new(prospect_params)
        
#         if @prospect.valid?
#            @prospect.save!
#             render json: @prospect.to_json()
            
#         end
    
#     end

#     def destroy

#         @prospect= Prospect.find(params[:id])
#         @prospect.destroy
#     end


#     def prospect_params
#         params.require(:prospect).permit(:first_name , :last_name , :title, :email,:phone,:managed_id,:status, :created_by,:salesrep_id ) 
         
#       end


# end




class ProspectsController < ApplicationController
    def index
        if params[:salesrep_id]
            render json: Prospect.where("salesrep_id = ?", params[:salesrep_id]), status: :accepted 
        elsif params[:manager_id] 
            render json: Prospect.where("manager_id = ?", params[:manager_id]), status: :accepted 
        else
            @prospects = Prospect.all
            render json: Prospect.all.to_json
        end
       
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
        params.require(:prospect).permit(:first_name , :last_name , :title, :email,:phone,:manager_id,:status, :created_by,:salesrep_id ) 
         
      end


end


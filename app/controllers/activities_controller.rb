

class ActivitiesController < ApplicationController

    def index
        render json: Activity.all.to_json
    end

    def show
        render json: Activity.find(params[:id]).to_json
    end


    def create
        @activity = Activity.new(activity_params)
        
        if @activity.valid?
           @activity.save!
            render json: @activity.to_json()
            
        end
    
    end

    def update
        activity = Activity.find(params[:id])
        activity.update(activity: params[:activity])
        render json: activity.to_json()
    end

    def destroy

        @activity= Activity.find(params[:id])
        @activity.destroy
    end
     
    def activity_params
        params.require(:activity).permit(:prospect_id, :name , :status, :created_by, :description, :prospect_name) 
         
    end

end



class ServingsController < ApplicationController
      def index
        servings = Servings.all
        render json: servings
      end
        
      def show
        servings = Servings.find(params[:id])
        render json: servings  
      end
             
    #   def new
    #     servings = Servings.new
    #   end
            
    #   def create
    #     servings = Servings.all(favorite_params)
    #     if  servings.save
    #     render json:  servings, status: :accepted
    #     else
    #     render json: {errors:  servings.errors.full_messages}, status: unprocessible_entity
    #     end
    #   end 
    
        
    #   def edit
    #     servings = Servings.find_by(params[:id])
    #   end
        
    #   def update
    #     servings = Servings.find_by(params[:id])
    #   end
        
      private
              
      def servings_params
        params.require(:servings).permit(:name, :recipe_id)
      end
    
    end
      
end

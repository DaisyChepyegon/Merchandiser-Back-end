class OutletsController < ApplicationController
  before_action :set_outlet, only: %i[ show update destroy ]

   # GET /outlets
   def index
    outlets = Outlet.all
 
     render json:outlets
   end
 
   # GET /outlets/1
   def show
     outlet = set_outlet
     if outlet
       render json: outlet
     else
       render json: {error: "outlet Not Found"}, status: :not_found
     end
   end
 
   # POST /outlets
   def create
    outlet = Outlet.create(outlet_params)
 
     if outlet
       render json:outlet, status: :created, location:outlet
     else
       render json:outlet.errors, status: :unprocessable_entity
     end
   end
 
   # PATCH/PUT /outlets/1
   def update
     outlet = set_outlet
     if outlet
       outlet.update(outlet_params)
       render json:outlet
     else
       render json:outlet.errors, status: :unprocessable_entity
     end
   end
 
   # DELETE /outlets/1
   def destroy
     outlet = set_outlet
     if outlet
       outlet.destroy
       head :no_content
     else
       render json: {error: "outlet Not Found"}, status: :not_found
     end
   end
 
   private
     # Use callbacks to share common setup or constraints between actions.
     def set_outlet
      Outlet.find(params[:id])
     end
 
     # Only allow a list of trusted parameters through.
     def outlet_params
       params.require(:outlet).permit(:name, :location, :merchandiser_id)
     end
end

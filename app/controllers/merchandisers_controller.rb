class MerchandisersController < ApplicationController
  before_action :set_merchandiser, only: %i[ show update destroy ]
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

   # GET /merchandisers
   def index
    merchandisers = Merchandiser.all

    render json: merchandisers
  end

  # GET /merchandisers/1
  def show
    merchandiser = set_merchandiser
    render json: merchandiser
   
  end

  # POST /merchandisers
  def create
    merchandiser = Merchandiser.create!(merchandiser_params)
    render json: merchandiser, status: :created
  end

  # PATCH/PUT /merchandisers/1
  def update
    merchandiser = set_merchandiser
      merchandiser.update!(merchandiser_params)
      render json: merchandiser
    
  end

  # DELETE /merchandisers/1
  def destroy
    merchandiser = set_merchandiser
      merchandiser.destroy
      head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merchandiser
     Merchandiser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def merchandiser_params
      params.require(:merchandiser).permit(:username, :image, :email, :phone_number, :password, :user_id, :manager_id)
    end

    def render_not_found_response
      render json: { error: "Merchandiser not found" }, status: :not_found
     end
end

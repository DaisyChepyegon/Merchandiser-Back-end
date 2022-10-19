class MerchandisersController < ApplicationController
  before_action :set_merchandiser, only: %i[ show update destroy ]

   # GET /merchandisers
   def index
    merchandisers = Merchandiser.all

    render json: merchandisers
  end

  # GET /merchandisers/1
  def show
    merchandiser = set_merchandiser
    if merchandiser
      render json: merchandiser
    else
      render json: {error: "Merchandiser Not Found"}, status: :not_found
    end
  end

  # POST /merchandisers
  def create
    merchandiser = Merchandiser.create(merchandiser_params)

    if merchandiser
      render json: merchandiser, status: :created, location: @merchandiser
    else
      render json: merchandiser.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /merchandisers/1
  def update
    merchandiser = set_merchandiser
    if merchandiser
      merchandiser.update(merchandiser_params)
      render json: merchandiser
    else
      render json: merchandiser.errors, status: :unprocessable_entity
    end
  end

  # DELETE /merchandisers/1
  def destroy
    merchandiser = set_merchandiser
    if merchandiser
      merchandiser.destroy
      head :no_content
    else
      render json: {error: "Merchandiser Not Found"}, status: :not_found
    end
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
end

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
    merchandiser = Merchandiser.new(merchandiser_params)
    if  merchandiser.save and merchandiser.valid?
        session[:admin_id] =  merchandiser.id
        render json: {
            status: :created,
            merchandiser: merchandiser
        }
    else
        render json: {
            status: 500,
            errors: merchandiser.errors.full_messages
        }
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
      params.require(:merchandiser).permit(:username, :email,  :password, :user_id, :password_confirmation)
    end
end

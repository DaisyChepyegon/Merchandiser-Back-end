class ManagersController < ApplicationController
  before_action :set_manager, only: %i[ show update destroy ]

  # GET /managers
  def index
    managers = Manager.all

    render json: managers
  end

  # GET /managers/1
  def show
    manager = set_manager
    if manager
      render json: manager
    else
      render json: {error: "manager Not Found"}, status: :not_found
    end
  end

  # POST /managers
  def create
    manager = Manager.create(manager_params)

    if manager
      render json: manager, status: :created, location: manager
    else
      render json: manager.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /managers/1
  def update
    manager = set_manager
    if manager
      manager.update(manager_params)
      render json: manager
    else
      render json: manager.errors, status: :unprocessable_entity
    end
  end

  # DELETE /managers/1
  def destroy
    manager = set_manager
    if manager
      manager.destroy
      head :no_content
    else
      render json: {error: "manager Not Found"}, status: :not_found
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manager
      Manager.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def manager_params
      params.require(:manager).permit(:username, :image, :email, :phone_number, :password, :manager_id)
    end
end

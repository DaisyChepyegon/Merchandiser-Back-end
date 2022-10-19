class ManagersSessionsController < ApplicationController
    def create
        manager = Manager.find_by(email: session_params_manager[:email])
        if manager&.authenticate(session_params_manager[:password])
          session[:manager_id] = manager_id.id
          render json: {
            logged_in: true,
            manager: manager
          }
        else
          render json: { 
            status: 401,
            errors: ['no such Manager', 'verify credentials and try again or signup']
          }
        end
      end
    
      def is_logged_in?
        if logged_in_manager? && current_manager
          render json: {
            logged_in: true,
            manager: current_manager
          }
        else
          render json: {
            logged_in: false,
            message: 'no such Manager'
          }
        end
      end
    
      def destroy
        manager = Manager.find_by(id:  session[:manager_id])
        if manager
            session.delete :manager_id
            head :no_content
        else
            render json: {errors: "Not authorized"}, status: :unauthorized
        end
      end
    
      private
      def session_params_manager
       params.require(:manager).permit(:username, :email, :password)
      end

end

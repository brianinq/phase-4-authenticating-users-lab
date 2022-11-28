class SessionsController < ApplicationController
    def create
        user = User.find_by(username: params[:username])
        if user
            session[:user_id] = user.id
            return render json: user
        end
        render json: { error: "Not authorized" }, status: :unauthorized
    end
    def destroy
       session.delete :user_id
       head :no_content 
    end
end

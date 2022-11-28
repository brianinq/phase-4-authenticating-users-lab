class UsersController < ApplicationController
    def show
        id = session[:user_id].to_i
        render json: User.find(id)
    end
end

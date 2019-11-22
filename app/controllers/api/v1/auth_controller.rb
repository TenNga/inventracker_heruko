class Api::V1::AuthController < ApplicationController
    def login
        user = User.find_by(user_name: params[:user_name])

        if user && user.authenticate(params[:password])
            render json: user 
        else    
            render json: {errors: "User Doesn't Exist!!"}
        end
    end
end
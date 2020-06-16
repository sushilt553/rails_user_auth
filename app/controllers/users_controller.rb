class UsersController < ApplicationController

    def new
        render :new
    end

    def create
        @newUser = User.new(user_params)
    
        if @newUser.save
            login(@newUser)
            redirect_to root_url
        else
            flash.now[:errors] = @newUser.errors.full_messages
            render :new
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password)
    end
end

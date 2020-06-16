class SessionsController < ApplicationController

    def new
        render :new
    end

    def create
        @user = User.find_by_credentials(
            params[:user][:username],
            params[:user][:password]
        )

        if @user
            login(@user)
            redirect_to root_url
        else
            flash.now[:errors] = ["Username/Password didn't match"]
            render :new
            # render json: ["Username/Password didn't match"], status: :unprocessable_entity
        end
    end

    def destroy
        self.logout
        redirect_to new_session_url
    end

    private
    def user_params
        params.require(:user).permit(:username, :password)
    end
end

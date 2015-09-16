module Api
  class UsersController < ApiController
    def index
      @users = User.all
      render json: @users
    end

    def show
      @user = User.find(params[:id]) #can just do current_user, Thursday's lecture
      render :show
    end

    def update
      @user = User.find(params[:id]) #same thing can just use current_user

      if @user.update_attributes(user_params)
        render json: @user
      else
        render json @user.errors.full_messages, status: :unprocessable_entity
      end
    end

    private
    def user_params
      params.require(:user).permit(:fname, :lname)
    end
  end
end

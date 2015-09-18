module Api
  class UsersController < ApiController
    wrap_parameters false

    def new
    end

    def index
      @users = User.all
      render json: @users
    end

    def create
      @user = User.new(user_params)
      if @user.save
        sign_in!(@user)
        render :show
      else
        render json: @user.errors.full_messages, status: :unprocessable_entity
      end
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
      params.require(:user).permit(:email, :fname, :lname, :password, :image)
    end
  end
end

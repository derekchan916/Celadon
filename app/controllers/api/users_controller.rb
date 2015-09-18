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

    def place_order
      current_user.cart_items.each do |cart_item|
        ordered_params = {
          product_id: cart_item.product_id,
          quantity: cart_item.quantity
        }
        ordered_item = current_user.ordered_items.new(ordered_params)
        if !ordered_item.save
          render json: ordered_item.errors.full_messages, status: :unprocessable_entity
        end
      end

      current_user.cart_items.destroy_all
      render json: {}
    end

    private
    def user_params
      params.require(:user).permit(:email, :fname, :lname, :password, :image)
    end
  end
end

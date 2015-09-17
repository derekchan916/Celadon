module Api
  class CartItemsController < ApiController
    def create
      @cart_item = current_user.cart_items.new(cart_params)

      if @cart_item.save
        render json: @cart_item
      else
        render json: @cart_item.errors.full_messages, status: :unprocessable_entity
      end
    end

    def index
      @cart_items = current_user.cart_items
      render json: @cart_items
    end

    def destroy
      @cart_item = CartItem.find(params[:id])
      @cart_item.destroy
    end

    private
    def cart_params
      params.require(:cart_item).permit(:product_id, :quantity)
    end
  end
end

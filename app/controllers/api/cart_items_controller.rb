module Api
  class CartItemsController < ApiController
    def create
      # sleep(1)
      product_id = cart_params[:product_id]
      quantity = cart_params[:quantity]
      cart = current_user.cart_items

      if cart.any? {|cart_item| cart_item.product_id == product_id}

        cart_item = cart.find_by(product_id: product_id)
        cart_item.update(quantity: cart_item.quantity + quantity.to_i)
        render :show
      else
        cart_item = cart.new(cart_params)

        if cart_item.save
          render :show
        else
          render json: cart_item.errors.full_messages, status: :unprocessable_entity
        end
      end
    end

    def destroy
      @cart_item = CartItem.find(params[:id])
      @cart_item.try(:destroy)
      render json: {}
    end

    private
    def cart_params
      params.require(:cart_item).permit(:product_id, :quantity)
    end
  end
end

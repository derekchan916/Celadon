module Api
  class OrderedItemsController < ApiController
    def create
      @ordered_item = current_user.ordered_items.new(ordered_item_params)

      if @ordered_item.save
        render json: @ordered_item
      else
        render json: @ordered_item.errors.full_messages, status: :unprocessable_entity
      end
    end

    private
    def ordered_item_params
      params.require(:cart_item).permit(:product_id, :quantity)
    end
  end
end

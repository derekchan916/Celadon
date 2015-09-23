module Api
  class ProductsController < ApiController
    def index
      if params[:type] == "fetch_by_page"
        @products = Product.all.includes(:reviews).includes(:cart_items).includes(:ordered_items).includes(:pokemoves).includes(:moves).includes(:types).includes(:move_types).includes(:views).page(params[:page])
        render :index
      else
        @products = Product.all.includes(:reviews).includes(:cart_items).includes(:ordered_items).includes(:pokemoves).includes(:moves).includes(:types).includes(:move_types).includes(:views)
        render :index
      end
    end

    def show
      @moves = []
      @poke_types = []
      @product = Product.find(params[:id])

      if signed_in?
        View.create!(user_id: current_user.id, product_id: @product.id)
      end

      @product.moves.each {|move| @moves << move.name }
      @product.types.each {|type| @poke_types << type.name }
      render :show
    end
  end
end

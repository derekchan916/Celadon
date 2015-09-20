module Api
  class ProductsController < ApiController
    def index
      @products = Product.all
      render :index
    end

    def show
      @moves = []
      @poke_types = []
      @product = Product.find(params[:id])
      @product.moves.each {|move| @moves << move.name }
      @product.types.each {|type| @poke_types << type.name }
      render :show
    end
  end
end

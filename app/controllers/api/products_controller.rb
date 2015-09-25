module Api
  class ProductsController < ApiController
    def index
      if params[:type] == "fetch_by_page"
        @products = Product.all.includes(:reviews, :cart_items, :ordered_items, :moves, :types, :views)

        if params[:categories]
          @products = @products.joins(:categories, :types).where(types: {name: params[:categories]}).uniq
        end

        if (params[:price] != ["on"]) && params[:price]#below certain price point
          @products = @products.where("price < #{params[:price].first.to_i}")
        end
        @products = @products.page(params[:page]).per(15)

        render :index
      elsif params[:type] == "fetch_by_views"
        @products = Product.all.includes(:reviews, :cart_items, :ordered_items, :moves, :types, :views)
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

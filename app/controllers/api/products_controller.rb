module Api
  class ProductsController < ApiController
    def index
      if params[:type] == "fetch_by_page"
        @products = Product.all.includes(:reviews, :cart_items, :ordered_items, :moves, :types, :views).page(params[:page])

        # SELECT
        #   COUNT(product.name) AS number_of_reviews
        # FROM
        #   products
        # JOIN
        #   reviews ON reviews.product_id = products.id
        # GROUP BY
        #   product.name

        render :index
      elsif params[:type] == "fetch_by_views"
        @products = Product.all.includes(:reviews, :cart_items, :ordered_items, :moves, :types, :views)
        #
        # Product.JOIN()
        # SELECT
        #   product.name, COUNT(name) AS count
        # FROM
        #   products
        # JOIN
        #   views ON views.product_id = products.id
        # WHERE
        #
        # GROUP BY
        #   products.name;
        # render :index
      # else
        # @products = Product.all
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

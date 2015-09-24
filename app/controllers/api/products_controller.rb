module Api
  class ProductsController < ApiController
    def index
      if params[:type] == "fetch_by_page"
        @products = Product.all.includes(:reviews, :cart_items, :ordered_items, :moves, :types, :views)

        if params[:categories]
          puts "THIS IS HITTING THISSSS"
          @products = @products.joins(:categories, :types).where(types: {name: params[:categories]}).uniq
        end
        @products = @products.page(params[:page]).per(15)
        # @products = Product.joins(:categories).joins(:type).where('types.name = Poison')
        # Product.joins(:categories).where('categories.type_id = 4')
        #
        # Product.find_by_sql(<<-SQL)
        #   SELECT
        #     *
        #   FROM
        #     products
        #   JOIN
        #     categories ON products.id = categories.product_id
        #   JOIN
        #     types ON types.id = categories.type_id
        #   WHERE
        #     types.name = 'Poison' OR
        #     types.name = 'Grass'
        # SQL
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

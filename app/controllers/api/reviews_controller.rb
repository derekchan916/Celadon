module Api
  class ReviewsController < ApiController
    def show_by_user
      
    end

    def show_by_product
    end

    def create
    end

    def destroy
    end

    private
    def review_params
      params.require(:review).permit(:star_rating, :title, :body)
    end
  end
end

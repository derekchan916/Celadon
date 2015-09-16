module Api
  class ReviewsController < ApiController
    def show_by_user

    end

    def show_by_product
    end

    def create
      @review = current_user.reviews.new(review_params)

      if @review.save
        render json: @review
      else
        render json: @review.errors.full_messages, status: :unprocessable_entity
      end
    end

    def destroy
    end

    private
    def review_params
      params.require(:review).permit(:star_rating, :title, :body,   :product_id)
    end
  end
end

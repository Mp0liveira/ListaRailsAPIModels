class Api::V1::FeedbacksController < ApplicationController
    def create
        post = Post.find(params[:id])
        feedback = post.feedbacks.create(feedbacks_params)
        feedback.save!
        render json: feedback, status: :created
    rescue StandardError => e
        render json: e, status: :bad_request
    end

    private

    def feedbacks_params
        params.require(:feedback).permit(:like)
    end
end

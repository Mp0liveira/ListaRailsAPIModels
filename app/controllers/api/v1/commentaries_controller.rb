class Api::V1::CommentariesController < ApplicationController
    def create
        post = Post.find(params[:id])
        commentary = post.commentaries.create(commentary_params)
        commentary.save!
        render json: commentary, status: :created
    rescue StandardError => e
        render json: e, status: :bad_request
    end

    private

    def commentary_params
        params.require(:commentary).permit(:content)
    end
end

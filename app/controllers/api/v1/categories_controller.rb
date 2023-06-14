class Api::V1::CategoriesController < ApplicationController
    def create
        category = Category.new(category_params)
        category.save!
        render json: category, status: :created
    rescue StandardError => e
        render json: e, status: :bad_request
    end

    private

    def category_params
        params.require(:category).permit(:name, :description)
    end
end
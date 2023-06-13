class Post < ApplicationRecord
    has_many :post_categories, dependent: :destroy
    has_many :feedbacks, dependent: :destroy

    validates :title, presence: :true, length: {maximum: 20}
    validates :content, presence: :true
end

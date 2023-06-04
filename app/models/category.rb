class Category < ApplicationRecord
    has_many :post_categories, dependent: :destroy

    validates :name, presence: :true, uniqueness: :true, length: {maximum: 50}
    validates :description, presence: :true, uniqueness: :true, length: {maximum: 10000}
end

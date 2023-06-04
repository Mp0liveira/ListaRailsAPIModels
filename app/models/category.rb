class Category < ApplicationRecord
    validates :name, presence: :true, uniqueness: :true, length: {maximum: 50}
    validates :description, presence: :true, uniqueness: :true, length: {maximum: 10000}
end

class Category < ApplicationRecord
    validates :name, presence: :true, uniqueness: :true
    validates :description, presence: :true, uniqueness: :true, length: {maximum: 10000}
end

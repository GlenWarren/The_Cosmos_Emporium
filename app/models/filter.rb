class Filter < ApplicationRecord
  belongs_to :product
  belongs_to :sub_category
  validates :product, uniqueness: { scope: :sub_category }
end

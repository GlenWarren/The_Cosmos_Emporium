class Category < ApplicationRecord
  has_many :products
  has_many :sub_categories, dependent: :destroy
  # has_many :filters, through: :sub_categories
  validates :name, presence: true
  before_save :default_active

  def default_active
    self.active ||= true
  end
end

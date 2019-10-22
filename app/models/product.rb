class Product < ApplicationRecord
  belongs_to :category
  has_many :filters
  has_many :sub_categories, through: :filters
  validates :name, presence: true
  validates :description, presence: true
  # validates :image, presence: true
  validates :price, presence: true
  validates :availability, presence: true
  before_save :default_active
  before_save :default_homepage

  def default_active
    self.active ||= true
  end

  def default_homepage
    self.homepage ||= false
  end
end

class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :filters, dependent: :destroy
  validates :name, presence: true
  before_save :default_active
  before_save :default_homepage

  def default_active
    self.active ||= true
  end

  def default_homepage
    self.homepage ||= false
  end
end

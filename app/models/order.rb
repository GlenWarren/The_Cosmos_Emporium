class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy
  validates :status, presence: true

  # before_save :set_status

  # def set_status
  #   self.active = "basket"
  # end
end

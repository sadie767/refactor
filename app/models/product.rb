class Product < ApplicationRecord
  has_many :order_items

  validates :name, :presence => true
  validates :description, :presence => true
  validates :price, :numericality => { :greater_than_or_equal_to => 0 }
  validates :image, :presence => true
end

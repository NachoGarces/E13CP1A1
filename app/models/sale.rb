class Sale < ApplicationRecord
  validates :cod, uniqueness: true
  validates :detail, presence: true
  validates :category, inclusion: { in: %w(uno dos tres cuatro cinco),
    message: "%{value} No es valido" }
  validates :value, numericality: true
  validates :discount, :numericality => { greater_than_or_equal_to: 0, less_than: 40 }
end

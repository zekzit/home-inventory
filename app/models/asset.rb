class Asset < ApplicationRecord
    has_many :notes
    validates :brand, presence: true
    validates :product_name, presence: true
end

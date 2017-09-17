class Asset < ApplicationRecord
    has_many :notes
    belongs_to :asset_category
    validates :brand, presence: true
    validates :product_name, presence: true

    def cost_per_day
        price / (Date.today - purchased_date).to_i
    end
end

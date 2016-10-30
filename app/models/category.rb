class Category < ApplicationRecord
	default_scope -> { order("min_point asc")}
	validates :name, presence: true
	validates :min_point, presence: true
	validates :max_point, presence: true
end

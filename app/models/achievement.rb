class Achievement < ApplicationRecord
 default_scope -> { order("point_min asc")}
  validates :name, presence: true
  validates :point_min, presence: true
  validates :point_max, presence: true
  has_many :users
end

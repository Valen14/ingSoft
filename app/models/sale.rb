class Sale < ApplicationRecord
  validates :user_id, presence: true
  validates :dni, presence: true
  validates :points, presence: true
  validates :card_number, presence: true
  validates :due_date, presence: true
  validates :name_titular, presence: true
  validates :card_fecha, presence: true
  belongs_to :user
end

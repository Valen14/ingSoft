class Postulation < ApplicationRecord
  validates :post_id, presence: true
  validates :user_id, presence: true
  validates :estimate_date, presence: true
  validates :description, presence: true

  belongs_to :user
  belongs_to :post
end

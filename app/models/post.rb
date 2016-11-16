class Post < ApplicationRecord
  validates :user_id, presence: true
  validates :city_id, presence: true
  validates :title, presence: true
  validates :description, presence: true

  has_many :comments
  has_many :postulations
  belongs_to :user
  belongs_to :city
end

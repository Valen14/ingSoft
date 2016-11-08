class Post < ApplicationRecord
  has_many :comments
  has_many :postulations
  belongs_to :user
  belongs_to :city
end

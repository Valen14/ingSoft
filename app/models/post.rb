class Post < ApplicationRecord
  has_many :comments
  has_many :postulations
  belongs_to :users
  belongs_to :cities
end

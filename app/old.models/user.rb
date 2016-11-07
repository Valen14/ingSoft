class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :sales
  has_many :answers
  has_many :comments
  has_many :posts
  has_many :postulations
  belongs_to :achievements  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

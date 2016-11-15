class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
      validates :name, presence: true
      validates :dni, presence: true
      validates :birthdate, presence: true
      validates :phone, presence: true

      has_many :sales
      has_many :answers
      has_many :comments
      has_many :posts
      has_many :postulations
      belongs_to :achievement

end

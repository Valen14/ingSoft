class Comment < ApplicationRecord
    has_one :answer
    belongs_to :user
    belongs_to :post
end

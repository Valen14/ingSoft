class Comment < ApplicationRecord
    belongs_to :answer
    belongs_to :user
    belongs_to :post
end

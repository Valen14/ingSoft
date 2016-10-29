class Category < ApplicationRecord
	default_scope -> { order("min_point asc")}
end

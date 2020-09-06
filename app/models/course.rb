class Course < ApplicationRecord
	belongs_to :tour
	attachment :image
end

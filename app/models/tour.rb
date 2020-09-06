class Tour < ApplicationRecord
  belongs_to :tour_provider
  has_many :courses, dependent: :destroy
  accepts_nested_attributes_for :courses, allow_destroy: true
  accepts_attachments_for :courses, attachment: :course_image
  has_many :maps, dependent: :destroy
  has_many :events, dependent: :destroy

  attachment :image
end

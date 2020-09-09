class Tour < ApplicationRecord
  belongs_to :tour_provider
  has_many :courses, dependent: :destroy
  accepts_nested_attributes_for :courses, reject_if: :all_blank, allow_destroy: true
  accepts_attachments_for :courses, attachment: :image
  has_many :maps, dependent: :destroy
  has_many :events, dependent: :destroy

  attachment :image
end

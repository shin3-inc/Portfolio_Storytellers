class TourTheme < ApplicationRecord

  has_many :providers_themes_relations, dependent: :destroy
  has_many :tour_providers, through: :providers_themes_relations

end

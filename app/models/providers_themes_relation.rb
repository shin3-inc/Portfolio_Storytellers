class ProvidersThemesRelation < ApplicationRecord

  belongs_to :tour_provider
  belongs_to :tour_theme

end

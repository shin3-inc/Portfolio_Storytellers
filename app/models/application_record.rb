class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  attachment :plofile_image
end

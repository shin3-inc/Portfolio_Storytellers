class Map < ApplicationRecord
	belongs_to :tour

	# バリデーションの前に送信されたaddressの値によってジオコーディング(緯度経度の算出)を行う
    geocoded_by :address
    before_validation :geocode
end

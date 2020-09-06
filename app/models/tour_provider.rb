class TourProvider < ApplicationRecord
	extend ActiveHash::Associations::ActiveRecordExtensions
	belongs_to_active_hash :tour_prefecture
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :providers_themes_relations, dependent: :destroy
  has_many :tour_themes, through: :providers_themes_relations
  accepts_nested_attributes_for :providers_themes_relations, allow_destroy: true
  has_one :tour, dependent: :destroy
  attachment :image
end

class Comic < ApplicationRecord
  has_many :application_comics
  has_many :applications, through: :application_comics
  has_many :reviews
  accepts_nested_attributes_for :application_comics, allow_destroy: true

  mount_uploader :image, ImageUploader
end

class Application < ApplicationRecord
  has_many :application_comics
  has_many :comics, through: :application_comics
  accepts_nested_attributes_for :application_comics, allow_destroy: true

  mount_uploader :image, ImageUploader
end

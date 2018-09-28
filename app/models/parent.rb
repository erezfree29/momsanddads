class Parent < ApplicationRecord
  belongs_to :user
  has_one :sexualorientation
  has_one :country
  mount_uploader :photo, PhotoUploader
end

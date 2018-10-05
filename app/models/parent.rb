class Parent < ApplicationRecord
  belongs_to :user
  has_one :sexualorientation
  has_one :country
  mount_uploader :photo, PhotoUploader
  validates :user_id,:name,:sorientation,:photo,:countryname,:town,:neighborhood,:age,:intrested,:about, presence: true
  validates :user_id, uniqueness: true
end


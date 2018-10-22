class Parent < ApplicationRecord
  geocoded_by :address
  belongs_to :user
  has_one :sexualorientation
  has_one :country
  mount_uploader :photo, PhotoUploader
  mount_uploader :partner_photo, PhotoUploader
  validates :user_id,:name,:sorientation,:photo,:countryname,:town,:neighborhood,:age,:intrested,:about,:address, presence: true
  validates :user_id, uniqueness: true
  after_validation :geocode, if: :will_save_change_to_address?

end






















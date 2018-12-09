class Message < ApplicationRecord
  has_one :receving_parent
  has_one :sending_parent
  validates :content,:receving_parent_id,:sending_parent_id,presence: true
end

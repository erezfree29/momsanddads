class Message < ApplicationRecord
  has_one :receving_parent
  has_one :sending_parent
end

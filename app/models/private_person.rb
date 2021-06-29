class PrivatePerson < ApplicationRecord
  belongs_to :user, optional: true
  
  with_options presence: true do
    validates :nickname
    validates :address_id
    validates :profile
  end
end

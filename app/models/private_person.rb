class PrivatePerson < ApplicationRecord
  belongs_to :user, optional: true
  
  with_options presence: true do
    validates :nickname
    validates :address
    validates :profile
  end
end

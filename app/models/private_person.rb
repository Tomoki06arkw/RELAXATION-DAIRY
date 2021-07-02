class PrivatePerson < ApplicationRecord
  belongs_to :user, optional: true
  has_one :form
  
  with_options presence: true do
    validates :nickname
    validates :address
    validates :profile
  end
end

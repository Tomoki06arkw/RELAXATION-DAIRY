class Form < ApplicationRecord
  belongs_to :user
  belongs_to :private_person
  has_one_attached :image
end

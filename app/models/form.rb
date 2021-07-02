class Form < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :image, presence: true

  def was_attached?
    self.image.attached?
  end
end

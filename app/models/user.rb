class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name,  format: {with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/} do
    end
    validates :age
  end
  has_one :private_person
  has_many :forms
end

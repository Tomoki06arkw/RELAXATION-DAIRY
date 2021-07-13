require 'rails_helper'

RSpec.describe PrivatePerson, type: :model do
  before do
    @private_person = FactoryBot.build(:private_person)
  end
  describe "ユーザー新規登録" do
    context "新規登録できないとき" do
      it "nicknameが空では登録できない" do
        @private_person.nickname = ''
        @private_person.valid?
        expect(@private_person.errors.full_messages).to include 'Nicknameを入力してください'
      end
      it "addressが空では登録できない" do
        @private_person.address = ''
        @private_person.valid?
        expect(@private_person.errors.full_messages).to include "Addressを入力してください"
      end
      it "profileが空では登録できない" do
        @private_person.profile = ''
        @private_person.valid?
        expect(@private_person.errors.full_messages).to include "Profileを入力してください"
      end
    end
  end
end

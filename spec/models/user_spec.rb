require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user =FactoryBot.build(:user)
  end
  describe "ユーザー新規登録" do
    context "新規登録できないとき" do
      it "nameが空では登録できない" do 
        @user.name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "名前は不正な値です"
      end
      it "ageが空では登録できない" do
        @user.age = ''
        @user.valid?
        expect(@user.errors.full_messages).to include '年齢を入力してください'
      end
      it "emailが空では登録できない" do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include 'Eメールを入力してください'
      end
      it '重複したemailが存在する場合登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("名前は不正な値です")
      end
      it "passwordが空では登録できない" do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "名前は不正な値です"
      end
      it "passwordが存在してもpassword_confirmationが空では登録できない" do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワード（確認用）とパスワードの入力が一致しません'
      end
      it "passwordが5文字以下なら登録できない" do
        @user.password = '5555'
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードは6文字以上で入力してください'
      end
    end

  end

end

require 'rails_helper'

RSpec.describe Form, type: :model do
  before do
    @form = FactoryBot.build(:form)
  end
  describe "日記投稿" do
    context "日記投稿が上手くいかないとき" do
      it "titleが空では登録できない" do
       @form.title = ""
       @form.valid?
       expect(@form.errors.full_messages).to include "Userを入力してください", "Titleを入力してください"
      end
      it "contentが空では登録できない" do
        @form.content = ""
        @form.valid?
        expect(@form.errors.full_messages).to include "Userを入力してください", "Contentを入力してください"
      end
    end
  end
end

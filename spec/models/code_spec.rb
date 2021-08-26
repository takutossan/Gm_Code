require 'rails_helper'

RSpec.describe Code, type: :model do
  before do
    @code = FactoryBot.build(:code)
  end
  describe 'コーデ投稿機能' do
    context 'コーデが投稿できる時' do
      it 'messageとimageが存在すれば投稿できる' do
        expect(@code).to be_valid
      end
    end
    context 'コーデ投稿ができないとき' do
      it 'messageが空だと投稿できない' do
        @code.message = ''
        @code.valid?
        expect(@code.errors.full_messages).to include "Messageを入力してください"
      end
      it '画像がないと投稿できないこと' do
        image = build(:image, image: image)
        image.valid?
        expect(image.errors[:image]).to include "画像がありません"
      end
    end
  end
end
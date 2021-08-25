require 'rails_helper'

RSpec.describe Message, type: :model do
  before do
    @message = FactoryBot.build(:message)
  end

  describe 'メッセージ送信機能' do
    context 'メッセージが送信できる時' do
      it 'messageが存在すれば投稿できる' do
        expect(@message).to be_valid
      end
    end

    context 'メッセージが送信できないとき' do
      it 'messageが空だと登録できない' do
        @message.comment = ''
        @message.valid?
        expect(@message.errors.full_messages).to include "Message can't be blank"
      end
    end
  end
end

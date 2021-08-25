require 'rails_helper'

RSpec.describe Comment, type: :model do
    before do
      @comment = FactoryBot.build(:comment)
    end
  
    describe 'コメント投稿機能' do
      context 'コメントが投稿できる時' do
        it 'codeが存在すれば投稿できる' do
          expect(@code).to be_valid
        end
      end

      context 'コメント投稿ができないとき' do
        it 'commentが空だと登録できない' do
          @code.comment = ''
          @code.valid?
          expect(@code.errors.full_messages).to include "Comment can't be blank"
        end
      end
    end
  end

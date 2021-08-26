require 'rails_helper'

RSpec.describe Comment, type: :model do
    before do
      @comment = FactoryBot.build(:comment)
    end
  
    describe 'コメント投稿機能' do
      context 'コメントが投稿できる時' do
        it 'codeが存在すれば投稿できる' do
          expect(@comment).to be_valid
        end
      end

      context 'コメント投稿ができないとき' do
        it 'textが空だと登録できない' do
          @comment.text = ''
          @comment.valid?
          expect(@comment.errors.full_messages).to include "Commentがありません"
        end
      end
    end
  end

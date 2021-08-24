class Code < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :comments

  with_options presence: true do
    validates :image
    validates :message
  end
end

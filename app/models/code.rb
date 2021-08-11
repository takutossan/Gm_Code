class Code < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  
  with_options presence: true do
    validates :image
    validates :message
  end
end

class Comment < ApplicationRecord
  belongs_to :code
  belongs_to :user
end

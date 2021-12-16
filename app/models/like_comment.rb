class LikeComment < ApplicationRecord
  belongs_to :post_image
  belongs_to :user
  belongs_to :Comment
end

class Review < ApplicationRecord
  belongs_to :walker
  belongs_to :user
end

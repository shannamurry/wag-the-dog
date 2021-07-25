class Walker < ApplicationRecord
  belongs_to :user
  belongs_to :area
  has_many :reviews
end

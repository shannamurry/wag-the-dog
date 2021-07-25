class Walker < ApplicationRecord
  belongs_to :user
  belongs_to :area
  has_many :reviews

  validates_associated :user
  validates_associated :area
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true
  validates :phone, numericality: { only_integer: true }
  validates :phone, length: { is: 10 }
  validates_format_of :phone, :with => /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/, :multiline => true
  validates :email, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :city, presence: true
  validates :details, presence: true
end

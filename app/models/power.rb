class Power < ActiveRecord::Base
  has_attachment :thumbnail, accept: [:jpg, :png, :gif]
  validates :thumbnail, presence: true
  belongs_to :user
  acts_as_likeable
  belongs_to :category
end

class Power < ActiveRecord::Base
  has_attachment :thumbnail, accept: [:jpg, :png, :gif]
  validates :thumbnail, presence: true
  belongs_to :user
  # Allow a model to be liked
  acts_as_likeable
end

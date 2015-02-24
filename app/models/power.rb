class Power < ActiveRecord::Base
  has_attachment :thumbnail, accept: [:jpg, :png, :gif]
  validates :thumbnail, presence: true
  belongs_to :user
end

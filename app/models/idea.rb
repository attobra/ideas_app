class Idea < ApplicationRecord
  mount_uploader :picture, PictureUploader
  belongs_to :category
  belongs_to :user
  validates :name, presence:true
  has_one_attached :picture
end

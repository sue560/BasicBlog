class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :tags
  validates :title, presence: true, length: { minimum: 5 }
  mount_uploader :image, ImageUploader
end

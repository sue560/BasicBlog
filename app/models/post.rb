class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
  mount_uploader :image, ImageUploader
  validates :tag, inclusion: { in: %w(Finland Netherlands UK),
    message: "%{value} is not a valid country" }

  def self.search(search)
    where("title LIKE ?", "%#{search}%") 
    where("body LIKE ?", "%#{search}%")
  end

end

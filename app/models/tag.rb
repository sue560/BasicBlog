class Tag < ActiveRecord::Base
    belongs_to :posts
    validates :country, inclusion: { in: %w(UK, FI, NL),
      message: "%{value} is not a valid country" }, allow_nil: true
end

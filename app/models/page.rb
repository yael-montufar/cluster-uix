class Page < ApplicationRecord
  validates :title, presence: true, uniqueness: { case_sensitive: false }
  before_save { title.downcase! }
end

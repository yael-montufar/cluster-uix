class Page < ApplicationRecord
  after_validation :set_slug, :to_param, only: [:show]

  validates :title, presence: true, uniqueness: { case_sensitive: false }

  before_save { title.downcase! }

  def to_param
    slug.to_s
  end

  private

  def set_slug
    self.slug = title.parameterize
  end
end

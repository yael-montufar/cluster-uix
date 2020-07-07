class Page < ApplicationRecord
  before_validation :title_format
  after_validation :set_slug, :to_param, only: [:show]

  validates :title, presence: true, uniqueness: { case_sensitive: false }

  def to_param
    slug.to_s
  end

  private

  def title_format
    # self.title = title.gsub(/\s+/, "")
    title.downcase!
  end

  def set_slug
    self.slug = title.parameterize
  end
end

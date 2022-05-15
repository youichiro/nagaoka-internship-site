class AnnouncementCategory < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { maximum: 100 }

  has_many :announcements, dependent: :restrict_with_exception

  def bg_color
    color.present? ? color : 'teal'
  end
end

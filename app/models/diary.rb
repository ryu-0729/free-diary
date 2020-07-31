class Diary < ApplicationRecord
  validates :title, presence: true

  has_one_attached :image
  validate :image_presence

  belongs_to :user

  def thumbnail
    return self.image.variant(resize: '300x300').processed
  end

  def image_presence
    if image.attached?
      if !image.content_type.in?(%('image/jpeg image/png'))
        errors.add(:image, "にはjpegまたはpngファイルを添付してください")
      end
    end
  end
end

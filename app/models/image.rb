class Image < ApplicationRecord
  belongs_to :user

  has_one_attached :avatar
  validate :image_size

  private

  def image_size
    if avatar.byte_size > 2.megabytes
      errors.add(:avatar, "should be less than 2MB")
    end
  end

end

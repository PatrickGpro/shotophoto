class Photo < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  def display_image
    return unless image.attached?

    image.variant(resize_to_fill: [300, 600 , { gravity: 'Center' }]).processed
  end
end

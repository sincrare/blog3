class Article < ApplicationRecord
  has_many :article_images
  accepts_nested_attributes_for :article_images

  scope :order_by_descending, -> { order(entry_at: :desc) }
  scope :published, -> { where(published: true) }

  def default_images_build
    article_image_count = 5
    (article_image_count - article_images.count).times { article_images.build }
  end
end

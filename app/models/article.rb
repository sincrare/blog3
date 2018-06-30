class Article < ApplicationRecord
  has_many :article_images
  accepts_nested_attributes_for :article_images
end

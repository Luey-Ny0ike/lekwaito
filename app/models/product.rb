class Product < ApplicationRecord
  has_attached_file :image, styles: { large:"600x600>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  belongs_to :category

  after_save ThinkingSphinx::RealTime.callback_for(:product)
end

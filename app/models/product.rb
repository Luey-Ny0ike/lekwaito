class Product < ApplicationRecord
  # RELATIONSHIPS
  belongs_to :category
  has_one :order_item
  # PAPERCLIP ATTACHMENTS
  has_attached_file :image, styles: { large: '600x600>', medium: '300x300>', thumb: '100x100>' }, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  # THINKING SPHINX SET UP
  after_save ThinkingSphinx::RealTime.callback_for(:product)

  default_scope { where(active: true) }

  def discounted_price
    price - offer_price
  end

  def unit_price
    self.price - self.discounted_price
  end

  def total_price
    order_item.quantity * unit_price
  end
end

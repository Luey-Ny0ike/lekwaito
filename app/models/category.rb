class Category < ApplicationRecord
  has_many :products

  def name_with_state
"#{name}"
  end
end

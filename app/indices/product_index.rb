ThinkingSphinx::Index.define :product, :with => :real_time do
  # fields
  indexes title, :sortable => true
  indexes description
  indexes author.name, :as => :author, :sortable => true

  # attributes
  has category_id,  :type => :integer
  has created_at, :type => :timestamp
  has updated_at, :type => :timestamp
end

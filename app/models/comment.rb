class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user
  def user_attributes=(user_attributes)
    self.user = User.find_or_create_by(user_attributes)
    category = Category.find_or_create_by(category_attribute)
    self.user  << category
  end

end

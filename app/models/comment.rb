class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user
  def user_id=(user_id)
    if !user_id.blank?

      self.user = User.find_or_create_by(id: user_id)
      puts self.user.username
    end
  end

  def user_attributes=(user_attribute)
    if !user_attribute.blank?
      self.user = User.find_or_create_by(user_attribute)
    end
  end

end

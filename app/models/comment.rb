class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user
  def user_id=(user_id)
    if !user_attribute.blank?

      self.artist = User.find_or_create_by(id: user_id)
    end
  end

  def user_attributes=(user_attribute)
    if !user_attribute.blank?
      self.user = User.find_or_create_by(user_attribute)
      self.save

    end
  end

end

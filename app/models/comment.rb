class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user
  accepts_nested_attributes_for :post
  def user_id=(user_id)
    puts user_id
    if !user_id.blank?
      self.user = User.find(id: user_id)
      puts self.user.username
      self.save
    end

  end
  def user_attributes=(user_attribute)
    if !user_attribute.blank?
      self.user = User.find_or_create_by(user_attribute)
      self.save

    end
  end

end

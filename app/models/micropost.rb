class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  
  # Relationships
  belongs_to :user
  
  # Validations
  validates :content, :length => { :maximum => 140 }
end

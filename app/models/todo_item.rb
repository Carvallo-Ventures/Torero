class TodoItem < ActiveRecord::Base
  belongs_to :Rotation

 validates :content, presence:true

  def completed?
  	!completed_at.blank?
  end
  
end

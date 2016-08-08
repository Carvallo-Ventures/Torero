class TodoItem < ActiveRecord::Base
  belongs_to :Rotation

  def completed?
  	!completed_at.blank?
  end
end

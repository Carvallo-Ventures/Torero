class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :avatar, styles: { large:"500x500", medium: "300x300>", thumb: "100x100>" }, default_url: "http://www.worldagroforestry.org/sites/default/files/default_images/defaultavatar.png", :storage=> :s3
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
 has_many :rotations
end
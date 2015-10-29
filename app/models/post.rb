class Post < ActiveRecord::Base
  has_attached_file :img, styles: { medium: "500x200>", thumb: "100x40>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :img, content_type: /\Aimage\/.*\Z/
end

class Post < ApplicationRecord
	belongs_to :user
	has_many :remarks
	
	has_attached_file :post_img, styles: { post_index: "350x350>", post_show: "500x500>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :post_img, content_type: /\Aimage\/.*\z/
end

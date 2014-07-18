class Article < ActiveRecord::Base
	belongs_to :project
	has_attached_file :image, :styles => {
		large: '900x900>',
		medium: '300x300>',
		small: '140x140',
		thumb: '64x64!'
	}
	validates_attachment_content_type :image, 
	:content_type => /\Aimage\/.*\Z/

	# def image_from_url(url)
	# 	self.image = open(url)
	# end
end

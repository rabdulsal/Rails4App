class Image < ActiveRecord::Base

	attr_reader :assets

	belongs_to :project

	has_attached_file :asset, :styles => {
		large: '900x900>',
		medium: '300x300>',
		small: '140x140',
		thumb: '64x64!'
	}
	validates_attachment_content_type :asset, 
	:content_type => /\Aimage\/.*\Z/

	def assets=(files = [])
		files.each{|f| (@assets ||= []) << images.create(asset: f) }
	end

end

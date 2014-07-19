class Image < ActiveRecord::Base

	attr_reader :assets

	belongs_to :project

	has_attached_file 	:asset,
						:styles => {
							large: '900x900>',
							medium: '300x300>',
							small: '140x140',
							thumb: '64x64!'
						},
						:storage => :s3,
			            :bucket  => ENV['MY_BUCKET_NAME'],
			            :s3_credentials => {
			                    :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
			                    :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
			                },
			                :url => ":s3_domain_url",
			                :path => "/:class/:attachment/:id_partition/:style/:filename"

	validates_attachment_content_type :asset, 
	:content_type => /\Aimage\/.*\Z/

	def assets=(files = [])
		files.each{|f| (@assets ||= []) << images.create(asset: f) }
	end

end

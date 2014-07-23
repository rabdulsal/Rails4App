class Project < ActiveRecord::Base

	has_one :article, dependent: :destroy
	has_many :images, dependent: :destroy

	accepts_nested_attributes_for 	:images, allow_destroy: true
	accepts_nested_attributes_for :article, allow_destroy: true

	def languages ; languages = self.language.split(", ") ; end

	# Define methods for getting Large- and Medium-sized images
	def big_main_image
		image = self.images.first
		image.asset.url(:large)
	end

	def med_main_image
		image = self.images.first
		image.asset.url(:med)
	end

end

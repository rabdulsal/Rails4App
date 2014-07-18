class Project < ActiveRecord::Base

	has_one :article, dependent: :destroy
	has_many :images, dependent: :destroy

	accepts_nested_attributes_for 	:images
	accepts_nested_attributes_for :article, allow_destroy: true

end

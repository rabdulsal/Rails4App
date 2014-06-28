class Project < ActiveRecord::Base
	has_one :article, dependent: :destroy
	accepts_nested_attributes_for :article, allow_destroy: true
end

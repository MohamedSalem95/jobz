class Image < ApplicationRecord
	belongs_to :task

	mount_uploader :file, TaskImageUploader
end

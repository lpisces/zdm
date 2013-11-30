require 'carrierwave/orm/activerecord'
class Attachment < ActiveRecord::Base
  mount_uploader :file, AttachmentUploader
end

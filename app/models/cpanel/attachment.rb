require 'carrierwave/orm/activerecord'
class Cpanel::Attachment < Attachment
  self.table_name = 'attachments'
  mount_uploader :file, AttachmentUploader
end

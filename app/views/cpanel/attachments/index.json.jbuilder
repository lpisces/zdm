json.array!(@cpanel_attachments) do |cpanel_attachment|
  json.extract! cpanel_attachment, :name, :file
  json.url cpanel_attachment_url(cpanel_attachment, format: :json)
end

json.array!(@attachments) do |attachment|
  json.extract! attachment, :name, :file
  json.url attachment_url(attachment, format: :json)
end

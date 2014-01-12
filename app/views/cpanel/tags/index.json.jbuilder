json.array!(@cpanel_tags) do |cpanel_tag|
  json.extract! cpanel_tag, :name, :section_id
  json.url cpanel_tag_url(cpanel_tag, format: :json)
end

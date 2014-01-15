json.array!(@cpanel_pages) do |cpanel_page|
  json.extract! cpanel_page, :name, :content
  json.url cpanel_page_url(cpanel_page, format: :json)
end

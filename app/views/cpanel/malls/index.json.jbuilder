json.array!(@cpanel_malls) do |cpanel_mall|
  json.extract! cpanel_mall, :name, :url, :logo_url, :mall_type
  json.url cpanel_mall_url(cpanel_mall, format: :json)
end

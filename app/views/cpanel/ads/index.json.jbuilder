json.array!(@cpanel_ads) do |cpanel_ad|
  json.extract! cpanel_ad, :position, :height, :width, :code, :description, :is_displayed
  json.url cpanel_ad_url(cpanel_ad, format: :json)
end

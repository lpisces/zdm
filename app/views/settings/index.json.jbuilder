json.array!(@settings) do |setting|
  json.extract! setting, :name, :value, :summary
  json.url setting_url(setting, format: :json)
end

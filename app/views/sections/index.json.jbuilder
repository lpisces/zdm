json.array!(@sections) do |section|
  json.extract! section, :name, :sort, :summary
  json.url section_url(section, format: :json)
end

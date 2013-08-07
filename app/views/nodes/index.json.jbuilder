json.array!(@nodes) do |node|
  json.extract! node, :name, :sort, :summary, :section_id
  json.url node_url(node, format: :json)
end

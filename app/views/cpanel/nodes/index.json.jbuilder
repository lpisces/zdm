json.array!(@cpanel_nodes) do |cpanel_node|
  json.extract! cpanel_node, :name, :sort, :summary, :section_id
  json.url cpanel_node_url(cpanel_node, format: :json)
end

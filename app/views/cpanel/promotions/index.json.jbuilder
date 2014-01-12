json.array!(@cpanel_promotions) do |cpanel_promotion|
  json.extract! cpanel_promotion, :title, :url, :mall_id, :content, :order
  json.url cpanel_promotion_url(cpanel_promotion, format: :json)
end

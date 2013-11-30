json.array!(@cpanel_things) do |cpanel_thing|
  json.extract! cpanel_thing, :title, :price, :coupon_price, :master_pic_url, :sub_pic_url, :click_url, :node_id
  json.url cpanel_thing_url(cpanel_thing, format: :json)
end

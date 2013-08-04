# encoding : utf-8

Setting.seed do |s|
  s.id    = 1
  s.name = "site_name"
  s.value = "app"
  s.summary  = "网站名称"
end

Setting.seed do |s|
  s.id    = 3
  s.name = "description"
  s.value = "an app for fun"
  s.summary  = "网站描述"
end

Setting.seed do |s|
  s.id    = 4
  s.name = "keywords"
  s.value = "ruby on rails"
  s.summary  = "网站关键字"
end

Setting.seed do |s|
  s.id    = 2
  s.name = "title"
  s.value = "app"
  s.summary  = "网站标题"
end


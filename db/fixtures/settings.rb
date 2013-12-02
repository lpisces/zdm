# encoding : utf-8

#User.seed do |s|
#  s.email = 'iamalazyrat@gmail.com'
#  s.admin = true
#  s.password = '123456'
#end

Cpanel::Setting.seed do |s|
  s.id    = 1
  s.name = "site_name"
  s.value = "就是值得买"
  s.summary  = "网站名称"
end

Cpanel::Setting.seed do |s|
  s.id    = 3
  s.name = "description"
  s.value = "致力成为简单好用的网上导购网站，提供经济实际的网购体验。"
  s.summary  = "网站描述"
end

Cpanel::Setting.seed do |s|
  s.id    = 4
  s.name = "keywords"
  s.value = "导购,折扣,优惠,值得买,就是值得买"
  s.summary  = "网站关键字"
end

Cpanel::Setting.seed do |s|
  s.id    = 2
  s.name = "title"
  s.value = "就是值得买"
  s.summary  = "网站标题"
end

Cpanel::Section.seed do |s|
  s.id = 1
  s.name = '女装'
  s.sort = 1
  s.summary = '女装'
end

Cpanel::Section.seed do |s|
  s.id = 2
  s.name = '男装'
  s.sort = 2
  s.summary = '男装'
end

Cpanel::Section.seed do |s|
  s.id = 3
  s.name = '母婴'
  s.sort = 3
  s.summary = '母婴'
end

Cpanel::Section.seed do |s|
  s.id = 4
  s.name = '鞋包'
  s.sort = 4
  s.summary = '鞋包'
end

Cpanel::Section.seed do |s|
  s.id = 5
  s.name = '美食'
  s.sort = 5
  s.summary = '美食'
end

Cpanel::Section.seed do |s|
  s.id = 6
  s.name = '居家'
  s.sort = 6
  s.summary = '居家'
end

Cpanel::Section.seed do |s|
  s.id = 7
  s.name = '文体'
  s.sort = 7
  s.summary = '文体'
end

Cpanel::Section.seed do |s|
  s.id = 8
  s.name = '化妆品'
  s.sort = 8
  s.summary = '化妆品'
end

Cpanel::Section.seed do |s|
  s.id = 9
  s.name = '9块9'
  s.sort = 9
  s.summary = '9块9'
end

Cpanel::Section.seed do |s|
  s.id = 10
  s.name = '19块9'
  s.sort = 10
  s.summary = '19块9'
end

Cpanel::Node.seed do |s|
  s.id = 1
  s.section_id  = 1
  s.name = '上衣'
  s.sort = 1
  s.summary = '女士上衣'
end

Cpanel::Node.seed do |s|
  s.id = 2
  s.section_id  = 1
  s.name = '裤装'
  s.sort = 2
  s.summary = '女士裤装'
end

Cpanel::Node.seed do |s|
  s.id = 3
  s.section_id  = 1
  s.name = '内衣'
  s.sort = 3
  s.summary = '女士内衣'
end

Cpanel::Node.seed do |s|
  s.id = 4
  s.section_id  = 2
  s.name = '上装'
  s.sort = 1
  s.summary = '男士上装'
end

Cpanel::Node.seed do |s|
  s.id = 5
  s.section_id  = 2
  s.name = '裤装'
  s.sort = 2
  s.summary = '男士裤装'
end

Cpanel::Node.seed do |s|
  s.id = 6
  s.section_id  = 2
  s.name = '内衣'
  s.sort = 3
  s.summary = '男士内衣'
end

Cpanel::Node.seed do |s|
  s.id = 7
  s.section_id  = 3
  s.name = '婴儿奶粉'
  s.sort = 1
  s.summary = '婴儿奶粉'
end

Cpanel::Node.seed do |s|
  s.id = 8
  s.section_id  = 3
  s.name = '母婴用品'
  s.sort = 2
  s.summary = '母婴用品'
end

Cpanel::Node.seed do |s|
  s.id = 9
  s.section_id  = 3
  s.name = '早教玩具'
  s.sort = 3
  s.summary = '早教玩具'
end

Cpanel::Node.seed do |s|
  s.id = 10
  s.section_id  = 3
  s.name = '婴幼童装'
  s.sort = 4
  s.summary = '婴幼童装'
end

Cpanel::Node.seed do |s|
  s.id = 11
  s.section_id  = 3
  s.name = '精品童鞋'
  s.sort = 5
  s.summary = '精品童鞋'
end

Cpanel::Node.seed do |s|
  s.id = 12
  s.section_id  = 3
  s.name = '孕期用品'
  s.sort = 6
  s.summary = '孕期用品'
end

Cpanel::Node.seed do |s|
  s.id = 13
  s.section_id  = 4
  s.name = '女包'
  s.sort = 1
  s.summary = '女包'
end

Cpanel::Node.seed do |s|
  s.id = 14
  s.section_id  = 4
  s.name = '女鞋'
  s.sort = 2
  s.summary = '女鞋'
end

Cpanel::Node.seed do |s|
  s.id = 15
  s.section_id  = 4
  s.name = '男包'
  s.sort = 3
  s.summary = '男包'
end

Cpanel::Node.seed do |s|
  s.id = 16
  s.section_id  = 4
  s.name = '男鞋'
  s.sort = 4
  s.summary = '男鞋'
end

Cpanel::Node.seed do |s|
  s.id = 17
  s.section_id  = 4
  s.name = '女士配饰'
  s.sort = 5
  s.summary = '女士配饰'
end

Cpanel::Node.seed do |s|
  s.id = 18
  s.section_id  = 4
  s.name = '男士配饰'
  s.sort = 6
  s.summary = '男士配饰'
end

Cpanel::Node.seed do |s|
  s.id = 19
  s.section_id  = 5
  s.name = '休闲零食'
  s.sort = 1
  s.summary = '休闲零食'
end

Cpanel::Node.seed do |s|
  s.id = 20
  s.section_id  = 5
  s.name = '进口零食'
  s.sort = 2
  s.summary = '进口零食'
end

Cpanel::Node.seed do |s|
  s.id = 21
  s.section_id  = 5
  s.name = '营养保健'
  s.sort = 3
  s.summary = '营养保健'
end

Cpanel::Node.seed do |s|
  s.id = 22
  s.section_id  = 5
  s.name = '参茸滋补'
  s.sort = 4
  s.summary = '参茸滋补'
end

Cpanel::Node.seed do |s|
  s.id = 23
  s.section_id  = 5
  s.name = '酒类'
  s.sort = 5
  s.summary = '酒类'
end

Cpanel::Node.seed do |s|
  s.id = 24
  s.section_id  = 5
  s.name = '茶叶'
  s.sort = 6
  s.summary = '茶叶'
end

Cpanel::Node.seed do |s|
  s.id = 25
  s.section_id  = 5
  s.name = '奶粉乳品'
  s.sort = 7
  s.summary = '奶粉乳品'
end

Cpanel::Node.seed do |s|
  s.id = 26
  s.section_id  = 6
  s.name = '床上用品'
  s.sort = 1
  s.summary = '床上用品'
end

Cpanel::Node.seed do |s|
  s.id = 27
  s.section_id  = 6
  s.name = '家具饰品'
  s.sort = 2
  s.summary = '家具饰品'
end

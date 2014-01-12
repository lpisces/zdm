class Cpanel::Tag < Tag
  self.table_name = 'tags'
  belongs_to :section
end

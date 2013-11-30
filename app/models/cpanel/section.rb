class Cpanel::Section < Section
  self.table_name = 'sections'
  has_many :nodes
end

class Cpanel::Thing < Thing
  self.table_name = 'things'
  belongs_to :node
  belongs_to :mall
end

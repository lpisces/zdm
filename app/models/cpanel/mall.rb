class Cpanel::Mall < Mall
  self.table_name = 'malls'
  has_many :things
end

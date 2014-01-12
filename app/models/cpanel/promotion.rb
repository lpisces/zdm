class Cpanel::Promotion < Promotion
  self.table_name = 'promotions'
  belongs_to :mall
end

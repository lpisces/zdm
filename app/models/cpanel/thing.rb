class Cpanel::Thing < ActiveRecord::Base
  self.table_name = 'things'
  belongs_to :node
end

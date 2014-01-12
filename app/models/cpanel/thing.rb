class Cpanel::Thing < ActiveRecord::Base
  self.table_name = 'things'
  belongs_to :node
  belongs_to :mall
end

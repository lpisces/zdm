class Mall < ActiveRecord::Base
  self.table_name = 'malls'
  has_many :things
end

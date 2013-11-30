class Cpanel::Node < Node
  self.table_name = 'nodes'
  belongs_to :section
  has_many :things
end

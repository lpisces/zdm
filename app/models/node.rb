class Node < ActiveRecord::Base
  belongs_to :section
  has_many :things
end

class Section < ActiveRecord::Base

  has_many :nodes
  has_many :tags
end

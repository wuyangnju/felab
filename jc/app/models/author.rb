class Author < ActiveRecord::Base
  belongs_to :oranization
  attr_accessible :name
end

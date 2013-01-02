class Author < ActiveRecord::Base
  belongs_to :org
  has_and_belongs_to_many :reports
  attr_accessible :name
  attr_accessor :sex
end

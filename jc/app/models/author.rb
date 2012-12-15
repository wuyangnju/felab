class Author < ActiveRecord::Base
  attr_accessible :name
  has_one :author_extra
  belongs_to :organization
  has_many :report_authors
  has_many :reports, :through => :report_authors
end

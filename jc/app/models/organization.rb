class Organization < ActiveRecord::Base
  attr_accessible :name
  has_many :authors
  has_many :report_organizations
  has_many :reports, :through => :report_organizations
end

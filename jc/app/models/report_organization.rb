class ReportOrganization < ActiveRecord::Base
  belongs_to :report
  belongs_to :organization
  # attr_accessible :title, :body
end

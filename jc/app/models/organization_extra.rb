class OrganizationExtra < ActiveRecord::Base
  belongs_to :organization
  attr_accessible :report_correctness_count, :report_correctness_ratio, :report_count
end

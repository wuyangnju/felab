class ReportAuthor < ActiveRecord::Base
  belongs_to :report
  belongs_to :author
  # attr_accessible :title, :body
end

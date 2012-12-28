class AuthorExtra < ActiveRecord::Base
  belongs_to :author
  attr_accessible :report_correctness_count, :report_count, :report_correctness_ratio
end

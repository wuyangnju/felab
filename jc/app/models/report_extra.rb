class ReportExtra < ActiveRecord::Base
  attr_accessible :close, :high, :low, :right
  belongs_to :report, :inverse_of => :report_extra
end

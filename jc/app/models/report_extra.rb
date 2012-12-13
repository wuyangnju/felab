class ReportExtra < ActiveRecord::Base
  belongs_to :report
  attr_accessible :close, :high, :low, :right
end

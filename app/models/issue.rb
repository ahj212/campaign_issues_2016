class Issue < ActiveRecord::Base
  has_many :candidate_issues
  has_many :candidates, :through => :candidate_issue
end
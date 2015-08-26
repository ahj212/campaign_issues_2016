class Candidate < ActiveRecord::Base
  has_many :candidate_issues
  has_many :issues, :through => :candidate_issue
end
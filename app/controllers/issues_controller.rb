class IssuesController < ApplicationController
  def index

  end

  def show
    @issue = Issue.all
    @candidate_issue = CandidateIssue.where(:issue_id => params[:id])
    # binding.pry
  end
end
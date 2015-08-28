class CandidatesController < ApplicationController
  def index

  end

  def show
  	@candidate = Candidate.find(params[:id])
  	@issue = Issue.all
  	#gets all the rows in candidate_issues where candidate_id corresponds to params id
  	@candidate_issue = CandidateIssue.where(:candidate_id => params[:id])
  end

  # we take in the parameters sent from the form and we find the appropriate candidates and issues and candidate_issues for each candidate for that specific issue, and we also return what was selected in those instance variables, so our form can remember
  def compare  	
  	@candidate_one = Candidate.find(params[:candidate_id])
  	@candidate_two = Candidate.find(params[:second_candidate_id])
  	@issue = Issue.find(params[:issue_id])

  	@candidate_one_issues = @candidate_one.candidate_issues.where(:issue_id => params[:issue_id])
  	@candidate_two_issues = @candidate_two.candidate_issues.where(:issue_id => params[:issue_id])
    
    @selected_c1 = @candidate_one.id
    @selected_c2 = @candidate_two.id 
    @selected_issue = @issue.id 
  end

end
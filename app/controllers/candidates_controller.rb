class CandidatesController < ApplicationController

  def index

  end

  def show
  	@candidate = Candidate.find(params[:id])
  	@issue = Issue.all
  	#gets all the rows in candidate_issues where candidate_id corresponds to params id
  	@candidate_issue = CandidateIssue.where(:candidate_id => params[:id])
  	# binding.pry
  end

  def compare  	
  	@candidate_one = Candidate.find(params[:candidate_id])
  	@candidate_two = Candidate.find(params[:second_candidate_id])
  	@issue = Issue.find(params[:issue_id])

  	@candidate_one_issues = @candidate_one.candidate_issues.where(:issue_id => params[:issue_id])
  	@candidate_two_issues = @candidate_two.candidate_issues.where(:issue_id => params[:issue_id])
  end
  # def index
  #   @artists = Artist.all
  # end

  # def show
  #   @artist = Artist.find(params[:id])
  # end

  # def new
  #   @artist = Artist.new
  # end

  # def create
  #   @artist = Artist.create(artist_params)
  #   redirect_to artist_path(@artist)
  # end

  # def edit
  #   @artist = Artist.find(params[:id])
  # end

  # def update
  #   @artist = Artist.find(params[:id])
  #   @artist.update(artist_params)
  #   redirect_to artist_path(@artist)
  # end

  # def destroy
  #   @artist = Artist.find(params[:id])
  #   @artist.destroy
  #   redirect_to artists_path
  # end

  # private

  # def artist_params
  #   params.require(:aritist).permit(:name, :img_url, :nationality, :genre)
  # end

end
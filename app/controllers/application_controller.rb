class ApplicationController < ActionController::Base
  #this runs the set_vars method before the page loads
  before_filter :set_vars
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #this method makes @candidates and @issues available in the view EVERYWHERE because every controller extends off ApplicationController
  def set_vars 
    @candidates = Candidate.all 
    @issues = Issue.all 
  end
end

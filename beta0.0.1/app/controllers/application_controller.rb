class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filer :authenticate_user!
  
  helper_method :search

  protected
  def search(query)
    @table_name = self
    where("table_name like ?", "%#(query)")
  end
end

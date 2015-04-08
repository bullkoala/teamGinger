class ApplicationController < ActionController::Base
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # Restrict access to the site to only the index and show pages
  before_filter :authenticate_user!, 
    except: [ :index, :show ]
  
#  helper_method :search

#  protected
#  def search(query)
#    @table_name = self
#    where("table_name like ?", "%#(query)")
#  end
end

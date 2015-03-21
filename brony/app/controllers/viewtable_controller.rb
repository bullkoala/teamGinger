class viewTablesController < ActionController::Base
  def index    

    @variable = ActionController::Base.connect.tables    

  end    

end
module ApplicationHelper
  protected
  def search(query)
    @table_name = self
    where("table_name like ?", "%#(query)")
  end
end

module Search

  def search(query)
    @table_name = self
    where("table_name like ?", "%#(query)")
  end

  def search_form(query)
    form_tag("/search", method: "get") do
      label_tag(:query, "Search for:")
      text_field_tag(:query)
      submit_tag("Search")
    end

  end
end

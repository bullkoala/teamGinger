class WelcomeController < ApplicationController
  def index
    @list_of_tables = ActiveRecord::Base.connection.tables
  end
end

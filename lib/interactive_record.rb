require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord
  def table_name 
    sql = <<-SQL 
    CREATE TABLE IF NOT EXISTS students(
    id INTEGER PRIMARY KEY,
    name TEXT,
    grade INTEGER
    )
    SQL
    DB[:conn].execute(sql)
  end
end
require_relative '../../config/environment.rb'
class CreateStudents < ActiveRecord::Migration
  sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students(
    id INTEGER PRIMARY KEY,
    name TEXT,
    grade INTEGER
    )
    SQL
    ActiveRecord::Base.connection.execute(sql)

    def change
      create_table :students do |t|
        t.string :name
      end
    end

end

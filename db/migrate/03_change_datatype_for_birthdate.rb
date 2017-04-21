require_relative '../../config/environment.rb'
class ChangeDatatypeForBirthdate < ActiveRecord::Migration
  def change
    change_column(:students,:birthdate,:datetime)
  end
end

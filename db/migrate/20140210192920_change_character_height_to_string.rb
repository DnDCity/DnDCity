class ChangeCharacterHeightToString < ActiveRecord::Migration
  def change
    Character.connection.execute <<-SQL
      ALTER TABLE characters ALTER COLUMN height TYPE varchar(255)
    SQL
  end
end

class DropTableSignupTables < ActiveRecord::Migration[6.0]
  def change
    drop_table :signup_tables
  end
end

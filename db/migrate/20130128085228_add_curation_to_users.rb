class AddCurationToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :curation, :string
  end
end

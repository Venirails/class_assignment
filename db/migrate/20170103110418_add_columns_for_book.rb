class AddColumnsForBook < ActiveRecord::Migration
  def change
	  add_column :books,:price,:decimal
	  add_column :students,:std,:string
	  rename_column :books,:year,:yop
	  remove_timestamps :students
  end
end

class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
       t.string :name
       t.integer :age
       t.text :address
      t.integer :phone
      t.timestamps
    end
  end
end

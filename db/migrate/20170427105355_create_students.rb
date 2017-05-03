class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :section
      t.date :dob
      t.string :standard
      t.integer :year_of_joined

      t.timestamps
    end
  end
end

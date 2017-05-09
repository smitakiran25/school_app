class AddFeesToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :fees, :float
  end
end

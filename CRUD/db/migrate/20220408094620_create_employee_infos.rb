class CreateEmployeeInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :employee_infos do |t|
      t.string :first_Name
      t.string :last_Name
      t.integer :empId
      t.string :gender
      t.string :highest_Degree
      t.timestamps
    end
  end
end

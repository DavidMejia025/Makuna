class AddDepartmentIdToFarmers < ActiveRecord::Migration[5.1]
  def change
    add_column :farmers, :department_id, :integer
  end
end

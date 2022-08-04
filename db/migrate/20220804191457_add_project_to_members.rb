class AddProjectToMembers < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :project_id, :integer
  end
end

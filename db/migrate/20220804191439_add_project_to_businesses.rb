class AddProjectToBusinesses < ActiveRecord::Migration[6.1]
  def change
    add_column :businesses, :project_id, :integer
  end
end

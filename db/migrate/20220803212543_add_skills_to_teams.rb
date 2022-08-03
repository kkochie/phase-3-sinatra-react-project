class AddSkillsToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :skills, :string 
  end
end

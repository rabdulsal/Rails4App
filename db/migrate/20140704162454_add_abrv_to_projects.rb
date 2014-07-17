class AddAbrvToProjects < ActiveRecord::Migration
  def up
  	add_column :projects, :abrv, :string
  end

  def down
  	remove_column :projects, :abrv, :string
  end
end

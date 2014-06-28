class AddProjectIdToArticles < ActiveRecord::Migration
  def up
  	add_column :articles, :project_id, :integer
  end

  def down
  	remove_column :articles, :project_id, :integer
  end
end

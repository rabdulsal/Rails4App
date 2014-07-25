class ChangeProjectTable < ActiveRecord::Migration
  def change
  	add_column :projects, :project_type, :string
  	add_column :projects, :website, :string
  	add_column :images, :main_image, :boolean, default: false
  end
end

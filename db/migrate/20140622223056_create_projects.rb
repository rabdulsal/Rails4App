class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :instructions
      t.text :language

      t.timestamps
    end
  end
end

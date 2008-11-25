class CreateVersions < ActiveRecord::Migration
  def self.up
    create_table :versions do |t|
      t.string :maintainer
      t.string :repo_path
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :versions
  end
end

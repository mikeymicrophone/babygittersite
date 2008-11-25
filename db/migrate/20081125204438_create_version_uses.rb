class CreateVersionUses < ActiveRecord::Migration
  def self.up
    create_table :version_uses do |t|
      t.integer :site_id
      t.integer :version_id

      t.timestamps
    end
  end

  def self.down
    drop_table :version_uses
  end
end

class CreateFeatureInclusions < ActiveRecord::Migration
  def self.up
    create_table :feature_inclusions do |t|
      t.integer :version_id
      t.integer :feature_id

      t.timestamps
    end
  end

  def self.down
    drop_table :feature_inclusions
  end
end

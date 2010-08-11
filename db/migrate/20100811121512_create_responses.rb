class CreateResponses < ActiveRecord::Migration
  def self.up
    create_table :responses do |t|
      t.references :punishment
      t.references :survey
      t.string :appropriate_when
      t.timestamps
    end
  end
  
  def self.down
    drop_table :responses
  end
end

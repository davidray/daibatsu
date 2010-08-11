class CreatePunishments < ActiveRecord::Migration
  def self.up
    create_table :punishments do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
  end
  
  def self.down
    drop_table :punishments
  end
end

class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.text :content
      t.timestamps null: false
    end
    add_reference :messages, :user, index: true, foreign_key: true
  end

  def self.down
    drop_table :messages
    remove_reference :messages, :user, index: true, foreign_key: true
  end
end

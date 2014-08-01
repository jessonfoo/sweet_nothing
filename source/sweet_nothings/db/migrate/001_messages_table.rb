class MessagesTable < ActiveRecord::Migration
  def change
    create_table :messages do |table|
      table.string  :text
      table.timestamps
    end
  end
end

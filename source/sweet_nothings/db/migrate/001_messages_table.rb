class MessagesTable < ActiveRecord::Migration
  def change
    create_table :messages do |table|
      table.string  :message
      table.timestamps
    end
  end
end
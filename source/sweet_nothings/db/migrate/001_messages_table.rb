class GenericMessagesTable < ActiveRecord::Migration
  def change
    create_table :generic_messages do |table|
      table.string  :message
      table.timestamps
    end
  end
end
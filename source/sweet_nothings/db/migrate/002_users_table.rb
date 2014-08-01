class UsersTable < ActiveRecord::Migration
  def change
    create_table :users do |table|
      table.string  :user_name
      table.string  :user_phone
      table.string  :recipient_name
      table.string  :recipient_phone
      table.string  :user_gender
      table.string  :recipient_gender
      table.timestamps
    end
  end
end

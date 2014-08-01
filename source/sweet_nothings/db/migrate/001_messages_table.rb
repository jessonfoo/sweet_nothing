class MessagesTable < ActiveRecord::Migration
	def change
		create_table :messages do |table|
			table.string  :text
			table.integer :user_id
			table.timestamps
		end
	end
end
class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
    	t.string :eventName
    	t.string :eventLocation 
    	t.text :eventDescription 
    	t.datetime :eventDate
    	t.decimal :eventCost   			
      t.timestamps
    end
  end
end

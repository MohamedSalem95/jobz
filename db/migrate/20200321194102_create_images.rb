class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
    	t.string :file, null: false
    	t.text :caption, null: true

    	t.belongs_to :task 
      t.timestamps
    end
  end
end

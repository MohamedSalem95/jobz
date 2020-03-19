class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
    	t.string :title, null: false
    	t.text :description, null: false
    	t.string :url, null: true
    	t.string :location, null: true

    	t.belongs_to :user
      t.timestamps
    end
  end
end

class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :name
      t.datetime :date
      t.integer :duration
      t.decimal :location

      t.timestamps null: false
    end
  end
end

class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.text :content
      t.time :deadline
      t.string :state
      t.references :category, foreign_key: true, index: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

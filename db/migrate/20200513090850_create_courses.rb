class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|

      t.string :lecture
      t.integer :period
      t.integer :date
      t.integer :semester
      t.integer :year

      t.integer :user_id, null: false



      t.timestamps
    end
  end
end

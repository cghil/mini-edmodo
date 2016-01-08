class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.references :teacher, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true
      t.string :course_name

      t.timestamps null: false
    end
  end
end

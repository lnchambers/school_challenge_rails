class CreateJoinTableStudentsCourses < ActiveRecord::Migration[5.1]
  def change
    create_join_table :students, :courses do |t|
      t.references :student, foreign_key: true
      t.references :course, foreign_key: true
    end
  end
end

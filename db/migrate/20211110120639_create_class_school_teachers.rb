class CreateClassSchoolTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :class_school_teachers do |t|
      t.references :class_school, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end

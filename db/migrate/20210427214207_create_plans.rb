class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.string :nameofplan
      t.references :student, null: false, foreign_key: true
      t.string :semester1
      t.string :course1a
      t.string :course1b
      t.string :course1c
      t.string :course1d
      t.string :semester2
      t.string :course2a
      t.string :course2b
      t.string :course2c
      t.string :course2d
      t.string :semester3
      t.string :course3a
      t.string :course3b
      t.string :course3c
      t.string :course3d
      t.string :semester4
      t.string :course4a
      t.string :course4b
      t.string :course4c
      t.string :course4d
      t.string :semester5
      t.string :course5a
      t.string :course5b
      t.string :course5c
      t.string :course5d
      t.string :semester6
      t.string :course6a
      t.string :course6b
      t.string :course6c
      t.string :course6d
      t.string :semester7
      t.string :course7a
      t.string :course7b
      t.string :course7c
      t.string :course7d
      t.string :semester8
      t.string :course8a
      t.string :course8b
      t.string :course8c
      t.string :course8d
      t.string :semester9
      t.string :course9a
      t.string :course9b
      t.string :course9c
      t.string :course9d
      t.string :semester10
      t.string :course10a
      t.string :course10b
      t.string :course10c
      t.string :course10d
      t.string :semester11
      t.string :course11a
      t.string :course11b
      t.string :course11c
      t.string :course11d
      t.string :semester12
      t.string :course12a
      t.string :course12b
      t.string :course12c
      t.string :course12d

      t.timestamps
    end
  end
end

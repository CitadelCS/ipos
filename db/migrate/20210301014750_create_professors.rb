class CreateProfessors < ActiveRecord::Migration[6.1]
  def change
    create_table :professors do |t|
      t.string :Name
      t.integer :CWID
      t.text :Expertise

      t.timestamps
    end
  end
end

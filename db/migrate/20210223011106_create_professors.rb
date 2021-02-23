class CreateProfessors < ActiveRecord::Migration[6.1]
  def change
    create_table :professors do |t|
      t.string :FirstName
      t.string :LastName

      t.timestamps
    end
  end
end

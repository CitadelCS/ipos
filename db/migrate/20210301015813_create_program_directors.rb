class CreateProgramDirectors < ActiveRecord::Migration[6.1]
  def change
    create_table :program_directors do |t|
      t.string :Name
      t.string :Department

      t.timestamps
    end
  end
end

class AdvisorFk < ActiveRecord::Migration[6.1]
  def change
    change_table :students do |t|
  
      t.references :professors, null: false, foreign_key: true

    end
  end
end

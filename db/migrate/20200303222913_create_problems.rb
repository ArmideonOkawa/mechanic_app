class CreateProblems < ActiveRecord::Migration[6.0]
  def change
    create_table :problems do |t|
      t.belongs_to :car, null: false, foreign_key: true
      t.string :problem

      t.timestamps
    end
  end
end

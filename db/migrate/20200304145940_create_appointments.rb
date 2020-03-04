class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.belongs_to :problem, null: false, foreign_key: true
      t.belongs_to :mechanic, null: false, foreign_key: true

      t.timestamps
    end
  end
end

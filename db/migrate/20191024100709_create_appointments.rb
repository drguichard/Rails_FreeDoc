class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|   # On créé la table appointment et on y relie 1 docteur et 1 patient
      t.datetime :date
      t.belongs_to :doctor, index: true
      t.belongs_to :patient, index: true
      t.belongs_to :city, index: true
      t.timestamps
    end
  end
end

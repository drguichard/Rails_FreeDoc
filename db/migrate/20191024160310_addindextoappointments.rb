class Addindextoappointments < ActiveRecord::Migration[6.0]
  def change
    add_reference :appointments, :cities, foreign_key: true
  end
end

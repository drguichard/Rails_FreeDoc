class Addindextodoctors < ActiveRecord::Migration[6.0]
  def change
    add_reference :doctors, :cities, foreign_key: true
  end
end

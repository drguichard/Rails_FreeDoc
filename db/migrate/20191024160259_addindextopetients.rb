class Addindextopetients < ActiveRecord::Migration[6.0]
  def change
    add_reference :patients, :cities, foreign_key: true
  end
end

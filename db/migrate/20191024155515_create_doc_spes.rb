class CreateDocSpes < ActiveRecord::Migration[6.0]
  def change
    create_table :doc_spes do |t|
      t.string :name
      t.belongs_to :doctor, index: true
     	t.belongs_to :speciality, index: true
      t.timestamps
    end
  end
end

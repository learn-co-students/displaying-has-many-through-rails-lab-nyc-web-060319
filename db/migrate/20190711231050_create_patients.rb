class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.references :appointment, foreign_key: true

      t.timestamps
    end
  end
end

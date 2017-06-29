class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.references :asset, foreign_key: true
      t.text :body
      t.datetime :timestamp

      t.timestamps
    end
  end
end

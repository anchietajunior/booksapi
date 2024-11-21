class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.datetime :publication_date, null: false
      t.integer :rating
      t.string :status, default: 'available'

      t.timestamps
    end
  end
end

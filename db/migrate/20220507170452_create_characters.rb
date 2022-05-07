class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.references  :user, foreign_key: true
      t.string      :name, null: false
      t.string      :quote, null: true
      t.string      :description, null: true
      t.timestamps
    end
  end
end

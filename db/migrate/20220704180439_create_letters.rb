class CreateLetters < ActiveRecord::Migration[7.0]
  def change
    create_table :letters do |t|
      t.string :title
      t.text :content
      t.boolean :public, default: false
      t.datetime :delivery_date
      t.string :delivery_email

      t.timestamps
    end
  end
end

class CreateCodes < ActiveRecord::Migration[6.1]
  def change
    create_table :codes do |t|
      t.text :message,                null: false
      t.string :code_title
      t.string :brand_name
      t.references :user,             null: false, foreign_key: true
      t.timestamps
    end
  end
end

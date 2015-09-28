class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year_published
      t.text :summary

      t.timestamps null: false
    end
  end
end

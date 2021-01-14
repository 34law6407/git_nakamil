class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :amount
      t.string :unit
      t.datetime :obtain
      t.timestamps
    end
  end
end

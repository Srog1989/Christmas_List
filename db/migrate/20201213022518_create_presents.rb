class CreatePresents < ActiveRecord::Migration[6.0]
  def change
    create_table :presents do |t|
      t.string :name
      t.string :category
      t.string :brand
      t.integer :cost
      t.belongs_to :user
      t.belongs_to :recipient
      t.timestamps
    end
  end
end

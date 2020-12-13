class CreatePresents < ActiveRecord::Migration[6.0]
  def change
    create_table :presents do |t|
      t.srting :name
      t.
      *                 age_range: integer???
      * 		category : string
      *                 Brand: string
      * 		user_id : integer
      * 		recipeient_id : integer
      * 		belongs_to :user
      * 		belongs_to :recipient
      t.timestamps
    end
  end
end

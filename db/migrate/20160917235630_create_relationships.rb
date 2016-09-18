class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
    	t.integer :user_one_id
    	t.integer :user_two_id
    	t.string :status, null: false

    	t.timestamps
    end
  end
end

class CreateMicroaggressions < ActiveRecord::Migration
  def change
    create_table :microaggressions do |t|

    	t.references :user, null: false
    	t.string :location
    	t.text :description
    	t.string :aggressor
    	t.integer :severity
    	

      t.timestamps null: false
    end
  end
end

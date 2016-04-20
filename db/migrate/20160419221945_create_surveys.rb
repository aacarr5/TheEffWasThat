class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
    	t.string :zipcode
    	t.string :gender
    	t.string :race
    	t.integer :age
    	t.string :email
    	t.string :faced_microaggressions 
    	t.string :seen_microaggressions

      t.timestamps null: false
    end
  end
end

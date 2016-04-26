class AddIndustryToSurvey < ActiveRecord::Migration
  def change
  	add_column :surveys, :industry, :string
  end
end

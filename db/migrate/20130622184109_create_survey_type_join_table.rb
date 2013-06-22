class CreateSurveyTypeJoinTable < ActiveRecord::Migration
  def up
    create_table :surveys_girltypes, :id => false do |t|
      t.references :survey
      t.references :girltype
    end
  end

  def down
  end
end

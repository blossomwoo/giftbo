class CreateSurveyColorJoinTable < ActiveRecord::Migration
  def up
    create_table :surveys_colors, :id => false do |t|
      t.references :survey
      t.references :color
    end
  end

  def down
  end
end

class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :zip
      t.date :dob
      t.string :flowers
      t.date :anniversary_date
      t.string :dislikes
      t.decimal :budget
      t.string :ship_address
      t.string :ship_zip
      t.string :ship_city
      t.string :phone_num
      t.references :user

      t.timestamps
    end
  end
end

class CreateGirltypes < ActiveRecord::Migration
  def change
    create_table :girltypes do |t|
      t.string :name

      t.timestamps
    end
  end
end

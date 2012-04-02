class CreateGamezs < ActiveRecord::Migration
  def change
    create_table :gamezs do |t|
      t.string :title
      t.string :rating
      t.string :date_added

      t.timestamps
    end
  end
end

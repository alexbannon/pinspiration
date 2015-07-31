class CreatePinboards < ActiveRecord::Migration
  def change
    create_table :pinboards do |t|
      t.string :title
      t.references :user, index: true, foreign_key: true
    end
  end
end

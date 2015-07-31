class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title
      t.string :picture_url
      t.string :content
      t.references :pinboard, index: true, foreign_key: true
    end
  end
end

class CreateQuests < ActiveRecord::Migration[8.0]
  def change
    create_table :quests do |t|
      t.string :title
      t.text :description
      t.boolean :completed, default: false
      t.string :author

      t.timestamps
    end
  end
end

class AddRepeatToQuests < ActiveRecord::Migration[8.0]
  def change
    add_column :quests, :repeat, :string, default: "never", null: false
  end
end

class AddVisibilityToQuests < ActiveRecord::Migration[8.0]
  def change
    add_column :quests, :visibility, :string, default: "personal", null: false
    add_reference :quests, :target_user, foreign_key: { to_table: :users }
  end
end

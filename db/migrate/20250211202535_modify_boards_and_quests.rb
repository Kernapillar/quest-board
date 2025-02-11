class ModifyBoardsAndQuests < ActiveRecord::Migration[8.0]
  def change
    remove_column :boards, :owner, :string
    remove_column :quests, :author, :string

    add_reference :boards, :user, null: false, foreign_key: true
    add_reference :quests, :board, null: false, foreign_key: true
    add_reference :quests, :author, null: false, foreign_key: { to_table: :users}

  end
end

class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.belongs_to :user_id, foreign_key: true
      t.belongs_to :project, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
